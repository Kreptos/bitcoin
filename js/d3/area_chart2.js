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
d3.csv("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/3_TwoNumOrdered_comma.csv")   
  .then(function(data) {

    var area = d3.area()
      .x(function(d){return x(d.date)})
      .y0(y(0))
      .y1(function(d){return y(d.value)});

    data.forEach(function(d){
      d.date = d3.timeParse("%Y-%m-%d")(d.date);
      d.value = +d.value;
      console.log(d.date);
    });

    x.domain(d3.extent(data, function(d){return d.date;}));
    y.domain([0, d3.max(data, function(d){return d.value;})]);

    // svg.append("g")
    //   .attr("transform", "translate(0," + areaHeight + ")")
    //   .call(d3.axisBottom(x));

    // svg.append("g")
    //   .call(d3.axisLeft(y));

    svg.append("path")
      .data([data])
      .attr("fill", "#CFE3FF")
      .attr("stroke", "#3782E9")
      .style("border-bottom", "none")
      .attr("stroke-width", "0.75")
      .attr("d", area)
      .attr("class", "chart__g");

 });