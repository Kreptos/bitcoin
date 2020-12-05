var margin = {top: 5, right: 0, bottom: 0, left: 0},
    areaWidth = 880 - margin.left - margin.right,
    areaHeight = 150 - margin.top - margin.bottom;

var svg = d3.select(".area__chart")
    .append("svg")
    .attr("width", areaWidth)
    .attr("height", areaHeight)
    // .attr("overflow", "visible")
    .attr("class", "chart__svg")
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var x = d3.scaleTime().range([0, areaWidth ]);
var y = d3.scaleLinear().range([areaHeight, 0 ]);


d3.csv("xxx.csv") //Чтение данных
    .then(function(data) {

    

    data.forEach(function(d){
      d.Time = d3.timeParse("%b %d, %Y")(d.Time);
      // d.Time = d3.timeFormat("%Y-%m-%d")(d.Time);
      // d.Time = d3.timeParse("%Y-%m-%d")(d.Time);
      d.Price = +d.Price.replace(',','.');
    });

    x.domain(d3.extent(data, function(d){return d.Time;}));
    y.domain([0, d3.max(data, function(d){return d.Price;})]);

    var bisect = d3.bisector(function(d){return d.Time}).left;

   


    var area = d3.area()
      .x(function(d){return x(d.Time)})
      .y0(y(0))
      .y1(function(d){return y(d.Price)})
      .curve(d3.curveCatmullRom.alpha(d3.curveBasis));

    var line = d3.line()
      .x(function(d){return x(d.Time)})
      // .y0(y(0))
      .y(function(d){return y(d.Price)})
      .curve(d3.curveCatmullRom.alpha(d3.curveBasis));

    

    // svg.append("g")
    //   .attr("transform", "translate(0," + areaHeight + ")")
    //   .call(d3.axisBottom(x));

    // svg.append("g")
    //   .call(d3.axisLeft(y));

    

    svg.append("path")
      .data([data])
      .attr("fill", "#CFE3FF")
      .attr("class", "chart__g")
      .attr("height", areaHeight + 50)
      .attr("d", area);
      

    svg.append("path")
      .data([data])
      .attr("fill", "none")
      .attr("stroke", "#3782E9")
      .attr("stroke-width", "0.75")
      .attr("height", areaHeight + 50)
      .attr("d", line);


    var focus = svg
      .append("g")
      .append('circle')
      .style("fill", "#3782E9")
      .attr("r", "4px")
      .style("opacity", 0);

    var focusBG = svg
      .append("g")
      .append('rect')
      .attr("class", "focusBG")
      .attr("width", "93px")
      .attr("height", "31px")
      .attr("rx", "5")
      .attr("ry", "5")
      .style("opacity", 0)
      .attr("text-anchor", "top")
      .attr("alignment-baseline", "middle");

      var focusText = svg
      .append('g')
      .append("text")
      .attr("class", "focusText")
      .style("opacity", 0)
      .attr("text-anchor", "top")
      .attr("alignment-baseline", "middle");

    // focusText.append("g")
    //   .append("rect")
    //   .style("fill", 'white')
    //   .style("opacity", 1);

    svg.append("rect")
      .style("fill", "none")
      .style("pointer-events", "all")
      .style("right", "5px")
      .attr("width", areaWidth)
      .attr("height", areaHeight + 50)
      .attr("transform", "translate("+ 0 + ',' + -50 + ")")
      .on("mouseover", mouseover)
      .on("mousemove", mousemove)
      .on("mouseout", mouseout);

    var mouseG = svg.append("g")
      .attr("class", "mouse-over-effects");

    mouseG.append("rect")
      .attr("class", "mouse-line")
      .style("stroke", "black")
      .style("stroke-width", "1px")
      .style("opacity", 0);


    function mouseover(){
      focus.style("opacity", 1);
      focusText.style("opacity", 1);
      focusBG.style("opacity", 1);
      d3.select(".mouse-line").style("opacity", 1);
    }

    function mousemove(){
      var x0 = x.invert(d3.pointer(event)[0] - 5);
      var i = bisect(data, x0, 0);
      selectedData = data[i];
      focus
        .attr("cx", x(selectedData.Time))
        .attr("cy", y(selectedData.Price));

      focusBG
        .attr("x", x(selectedData.Time)+15)
        .attr("y", y(selectedData.Price));

      focusText
        // .html(selectedData.Day + `/n` + selectedData.Price)
        .html(`<tspan dx='15px' dy='-3px'> ${selectedData.Day} <tspan/><tspan dx='-15px' dy='15px'>${selectedData.Price}<tspan/>`)
        .attr("x", x(selectedData.Time) + 15)
        .attr("y", y(selectedData.Price) + 15);

      d3.select(".mouse-line")
        .attr("x", x(selectedData.Time))
        .attr("y", y(selectedData.Price));
    }

    function mouseout(){
      focus.style("opacity", 0);
      focusText.style("opacity", 0);
      focusBG.style("opacity", 0);
    }

 });