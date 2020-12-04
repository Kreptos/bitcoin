var margin = {top: 0, right: 0, bottom: 0, left: 0},
    areaWidth = 880 - margin.left - margin.right,
    areaHeight = 150 - margin.top - margin.bottom;

var svg = d3.select(".area__chart")
    .append("svg")
    .attr("width", areaWidth + margin.left + margin.right)
    .attr("height", areaHeight + margin.top + margin.bottom)
    .attr("class", "chart__svg")
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var x = d3.scaleTime().range([0, areaWidth ]);
var y = d3.scaleLinear().range([areaHeight, 0 ]);

//Чтение данных
d3.csv("../../data/xxx.csv")
    .then(function(data) {

    

    data.forEach(function(d){
      d.Time = d3.timeParse("%b %d, %Y")(d.Time);
      // d.Time = d3.timeFormat("%Y-%m-%d")(d.Time);
      // d.Time = d3.timeParse("%Y-%m-%d")(d.Time);
      d.Price = +d.Price.replace(',','.');
      console.log(d.Price);
    });

    x.domain(d3.extent(data, function(d){return d.Time;}));
    y.domain([0, d3.max(data, function(d){return d.Price;})]);

    var area = d3.area()
      .x(function(d){return x(d.Time)})
      .y0(y(0))
      .y1(function(d){return y(d.Price)});

    // svg.append("g")
    //   .attr("transform", "translate(0," + areaHeight + ")")
    //   .call(d3.axisBottom(x));

    // svg.append("g")
    //   .call(d3.axisLeft(y));

    svg.append("path")
      .data([data])
      .attr("fill", "#CFE3FF")
      .attr("stroke", "#3782E9")
      .attr("stroke-width", "0.75")
      .attr("stroke-linejoin", "round")
      .attr("stroke-linecap", "round")
      .attr("d", area)
      .attr("class", "chart__g");

 });