var margin = {top: 10, right: 30, bottom: 30, left: 50},
    width = 860 - margin.left - margin.right,
    height = 600 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg = d3.select("#my_dataviz")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var x = d3.scaleTime().range([0, width ]);
var y = d3.scaleLinear().range([height, 0 ]);

//Read the data
d3.csv("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/3_TwoNumOrdered_comma.csv")   .then(function(data) {

    var area = d3.area()
      .x(function(d){return x(d.date)})
      .y0(y(0))
      .y1(function(d){return y(d.value)});

    data.forEach(function(d){
      d.date = d3.timeParse("%Y-%m-%d")(d.date);
      d.value = +d.value;
    });

    x.domain(d3.extent(data, function(d){return d.date;}));
    y.domain([0, d3.max(data, function(d){return d.value;})]);

    svg.append("g")
      .attr("transform", "translate(0," + height + ")")
      .call(d3.axisBottom(x));

    svg.append("g")
      .call(d3.axisLeft(y));

    svg.append("path")
      .data([data])
      .attr("fill", "#CFE3FF")
      .attr("stroke", "#3782E9")
      .attr("stroke-width", "0.75")
      .attr("d", area);
 });