var margin = {top: 5, right: 0, bottom: 0, left: 0},
    areaWidth = 880 - margin.left - margin.right,
    areaHeight = 150 - margin.top - margin.bottom;


  d3.select(".area__chart")
    .attr("rx", "10px")
    .attr("ry", "10px");



// var svg1 = svg
//   .append("svg")
//   .attr("width", areaWidth)
//   .attr("height", areaHeight)
//   .attr("class", "chart__svg")
//   .append("g")
//   .attr("transform", "translate(" + 0 + "," + (-areaHeight) + ")");

var svg = d3.select(".area__chart")
  .append("svg")
  .attr("overflow", "visible")
  .style("border-radius", "10px") 
  .attr("width", areaWidth)
  .attr("height", areaHeight)
  .attr("class", "chart__svg")
  .append("g")
  .attr("transform", "translate(" + margin.left + "," + margin.top + ")");;

  

var x = d3.scaleTime().range([0, areaWidth ]);
var y = d3.scaleLinear().range([areaHeight, 0 ]);


d3.csv("xxx1.csv") //Чтение данных
    .then(function(data) {

      

    data.forEach(function(d){
      d.Time = d3.timeParse("%b %d, %Y")(d.Time);
      
      // d.Time = d3.timeFormat("%Y-%m-%d")(d.Time);
      // d.Time = d3.timeParse("%Y-%m-%d")(d.Time);
      d.Price = +d.Price.replace(',','.');
    });

    // d3.timeFormatLocale("%b %d, %Y");

    x.domain(d3.extent(data, function(d){return d.Time;}));
    y.domain([0, d3.max(data, function(d){return d.Price;})]);

    var bisect = d3.bisector(function(d){return d.Time}).left;

   


    var area = d3.area()
      .x(function(d){return x(d.Time)})
      .y0(y(0))
      .y1(function(d){return y(d.Price)})
      .curve(d3.curveCatmullRom.alpha(d3.curveBasis));
      // .attr("d", rightRoundedRect());

    var line = d3.line()
      .x(function(d){return x(d.Time)})
      // .y0(y(0))
      .y(function(d){return y(d.Price)})
      .curve(d3.curveCatmullRom.alpha(d3.curveBasis));

    

    

      function rightRoundedRect(x, y, width, height, radius) {
        return "M" + x + "," + y
             + "h" + (width - radius)
             + "a" + radius + "," + radius + " 0 0 1 " + radius + "," + radius
             + "v" + (height - 2 * radius)
             + "a" + radius + "," + radius + " 0 0 1 " + -radius + "," + radius
             + "h" + (radius - width)
             + "z";
      }

    // svg.append("g")
    //   .attr("transform", "translate(0," + areaHeight + ")")
    //   .call(d3.axisBottom(x));

    // svg.append("g")
    //   .call(d3.axisLeft(y));

    

    svg.append("g")
      .append("path")
      .data([data])
      .attr("fill", "#CFE3FF")
      .attr("class", "chart__g")
      .attr("height", areaHeight)
      .style("border-radius", '10px')
      .attr("d", area);    

    // svg
    // .append("g")
    // .style("overflow","visible")
    // .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
    
    svg.append("g")
      .append("path")
      .data([data])
      .attr("fill", "none")
      .attr("stroke", "#3782E9")
      .attr("stroke-width", "0.75")
      .attr("height", areaHeight + 50)
      .attr("d", line);

    var vertLine = svg
      .append("g")
      .append("line")
      .attr("stroke", "black")
      .attr("stroke-dasharray", "5px, 6px")
      .style("opacity", 0);

    var horzLine = svg
      .append("g")
      .append("line")
      .attr("stroke", "black")
      .attr("stroke-dasharray", "5px, 6px")
      .style("opacity", 0);

    var focus = svg
      .append("g")
      .append('circle')
      .style("fill", "#3782E9")
      .attr("r", "4px")
      .style("opacity", 0);

    var focusBG = svg
      .append('rect')
      .attr("class", "focusBG")
      .attr("width", "93px")
      .attr("height", "31px")
      .attr("rx", "5")
      .attr("ry", "5")
      .style("opacity", 0)
      .style("filter", "drop-shadow( 0 2px 1px black )")
      .attr("text-anchor", "top")
      .attr("alignment-baseline", "middle")
      .attr("filter", "url(#dropshadow)");

    var focusText = svg
      .append("text")
      .attr("class", "focusText")
      .style("opacity", 0)
      .attr("text-anchor", "left")
      .attr("alignment-baseline", "middle");

    var focusPrice = svg
      .append("text")
      .attr("class", 'focusPrice')
      .style("opacity", 0)
      .attr("text-anchor", "left")
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
      .style("overflow", "hidden")
      .attr("rx", "10px")
      .attr("ry", "10px")
      .attr("transform", "translate("+ 0 + ',' + -50 + ")")
      .on("mouseover", mouseover)
      .on("mousemove", mousemove)
      .on("mouseout", mouseout);


      
    // var defs = svg.append("defs");

    // var filter = defs.append("filter")
    //   .attr("id", "dropshadow")
    
    // filter.append("feGaussianBlur")
    //   .attr("in", "SourceAlpha")
    //   .attr("stdDeviation", 4)
    //   .attr("result", "blur");
    // filter.append("feOffset")
    //   .attr("in", "blur")
    //   .attr("dx", 2)
    //   .attr("dy", 2)
    //   .attr("result", "offsetBlur");
    
    // var feMerge = filter.append("feMerge");
    
    // feMerge.append("feMergeNode")
    //   .attr("in", "offsetBlur")
    // feMerge.append("feMergeNode")
    //   .attr("in", "SourceGraphic");

    // var month = d3.timeFormat('%B')(function(d){
    //   return d.Month;
    // });



    function rightRoundedRect(x, y, width, height, radius) {
      return "M" + x + "," + y
           + "h" + (width - radius)
           + "a" + radius + "," + radius + " 0 0 1 " + radius + "," + radius
           + "v" + (height - 2 * radius)
           + "a" + radius + "," + radius + " 0 0 1 " + -radius + "," + radius
           + "h" + (radius - width)
           + "z";
    }


    function mouseover(){
      focus.style("opacity", 1);
      focusText.style("opacity", 1);
      focusPrice.style("opacity", 1);
      focusBG.style("opacity", 1);
      d3.select(".mouse-line").style("opacity", 1);
      vertLine.style("opacity", "0.2");
      horzLine.style("opacity", "0.2");
      


    }

    function mousemove(){
      var x0 = x.invert(d3.pointer(event)[0] - 5);
      var i = bisect(data, x0, 0);
      selectedData = data[i];

      vertLine
        .attr("x1", x(selectedData.Time))
        .attr("y1", 0)
        .attr("x2", x(selectedData.Time))
        .attr("y2", areaHeight);

      horzLine
        .attr("x1", 0)
        .attr("y1", y(selectedData.Price))
        .attr("x2", areaWidth)
        .attr("y2", y(selectedData.Price));

      focus
        .attr("cx", x(selectedData.Time))
        .attr("cy", y(selectedData.Price));

      if((focus.attr("cx") <= areaWidth-69) && (focus.attr("cx") >= 12)){
        focusBG
          .attr("x", x(selectedData.Time) - 20);

        focusText
          .attr("x", x(selectedData.Time) - 15);

        focusPrice
          .attr("x", x(selectedData.Time) - 15);
      }
      // if(focus.attr("cx") > 70){
      //   focusBG
      //     .attr("x", x(selectedData.Time) - 20);

      //   focusText
      //     .attr("x", x(selectedData.Time) - 15);

      //   focusPrice
      //     .attr("x", x(selectedData.Time) - 15);
      // }

      focusBG
        .attr("y", y(selectedData.Price) - 45);

      focusText
        .html(d3.timeFormat("%d %B, %Y")(selectedData.Time))
        .attr("y", y(selectedData.Price) - 34);

      focusPrice
        .html(selectedData.Price)
        .attr("y", y(selectedData.Price) - 22);

      // console.log(d3.timeFormat("%d %B, %Y")(selectedData.Time));
      
      d3.select(".mouse-line")
        .attr("x", x(selectedData.Time))
        .attr("y", y(selectedData.Price));
    }

    function mouseout(){
      focus.style("opacity", 0);
      vertLine.style("opacity", 0);
      horzLine.style("opacity", 0);
      focusText.style("opacity", 0);
      focusPrice.style("opacity", 0);
      focusBG.style("opacity", 0);
    }

 });