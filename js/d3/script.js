var width = 223,
    height = 223,
    margin = 40;

var data = [20, 10, 10, 20, 30, 40, 14, 50, 10, 20];

var dataAll = d3.sum(data);

var div = d3.select('.donut_persent')
    .style("opacity", 0);

var svg = d3.select(".donut")
    .append("svg")
    .attr("width", width)
    .attr("height", height);

var g = svg
    .append("g")
    .attr("transform", `translate(${width / 2}, ${height / 2})`);



var radius = Math.min(width, height) / 2;

var color = d3.scaleOrdinal([data], ["#FF1C45", "#E9A237", "#FFCA42", "#0DB432", "#0DB4AA", "#2B5B9D", "#3782E9", "#7C00F8", "#EB00FF", "#FF0099"]);



var arc = d3
    .arc()
    .outerRadius(radius)
    .innerRadius(55);
    

var pie = d3.pie();

var pied_data = pie(data);

var arcs = g
    .selectAll(".arc")
    .data(pied_data)
    .join((enter) => enter.append("path").attr("class", "arc"))
    .attr("transform", "rotate(-162)")
    .on("mouseover", function (d, i) {
        d3.selectAll(".arc").transition()
            .duration('50')
            .attr("opacity", ".5");
        d3.select(this).transition()
            .duration('50')
            .attr("opacity", "1");
        div.transition()
            .duration(50)
            .style("opacity", 1);
        var num = (Math.round((i.value / dataAll) * 100)).toString() + '%';
        console.log(dataAll);
        div.html(num)
            .style("position", "relative")
            .style("z-index", 10000);
    })
    .on("mouseout", function (data) {
        d3.selectAll(".arc").transition()
            .duration('50')
            .attr("opacity", "1");

        div.transition()
            .duration(50)
            .style("opacity", 0);
    });


arcs.attr("d", arc).style("fill", (d, i) => color(i));