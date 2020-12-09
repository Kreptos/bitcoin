var f = false;
var play = d3.select(".pause")
    .on("click", function(d){

        if(f){
            f=false;
        }
        else{
            f=true;
        }    d3.select(".play_item").style("display", "block");
        
        if(f){
            d3.select(".pause_item").style("display", "none");
            d3.select(".play_item").style("display", "block");
        }

        if(!f){
            d3.select(".pause_item").style("display", "block");
            d3.select(".play_item").style("display", "none");
        }
    });


d3.json("atad.json").then(function(data){

    var margin = {top: 5, bottom: 15, right: 5, left: 5},
        histWidth = 416 - margin.left - margin.right,
        histHeight = 130 - margin.top - margin.bottom;

    var fees = [1, 10, 20, 35, 60, 80, 100, 120, 140, 180, 250, 300, ">"];

    var svg = d3.select(".histogram")
        .append("svg")
        .attr("overflow", "visible")
        .attr("width", histWidth + margin.left + margin.right)
        .attr("height", histHeight + margin.top + margin.bottom)
        .attr("class", "histogram__svg")
        .append("g")
        .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

    var x = d3.scaleBand().range([0, histWidth]).padding(-1);
    var y = d3.scaleLinear().range([histHeight, 0]);

    data.forEach(function(d){
        d.value = +d.value;
    });
    
    x.domain(fees);
    y.domain([0, d3.max(data, function(d){return d.value})]);

    var barWidth = (histWidth / data.length);
    
    var bar1 = svg.selectAll(".bar1")
        .data(data)
        .enter()
        .append("rect")
        .attr("class", "bar1")
        .style("fill", "#F5F5F5")
        .attr("rx", "5px")
        .attr("ry", "5px")
        .attr("x", function(d){return x(d.fees)})
        .attr("width", "10px")
        .attr("height", "115px")
        .attr("transform", "translate(45, -11)");

    var bar = svg.selectAll(".bar")
        .data(data)
        .enter()
        .append("rect")
        .attr("class", "bar")
        .attr("rx", "5px")
        .attr("ry", "5px")
        .attr('x', function(d){return x(d.fees)})
        .attr("width", "10px")
        .attr("y", function(d) {return y(d.value)})
        .attr("height", function(d){return histHeight - y(d.value)})
        .attr("transform", "translate(45, -6)")
        .on("mouseover", function(i, d){
            d3.selectAll(".bar").style("opacity", "0.2")
            d3.select(this).style("opacity", 1);

            TransactionsText
                .style("display", "inherit")
                .html(`Транзакций: ${d.value}`);

            timeText
                .style("display", "inherit")
                .html(`Время ожидания: 3 часа`);

            feesText
                .style("display", "inherit")
                .html(`ś/vByte: ${fees[dataAll.indexOf(d.fees)]} - ${fees[dataAll.indexOf(d.fees)+1]}`);
        })
        .on("mouseout", function(i, d){
            d3.selectAll(".bar").style("opacity", 1);

            TransactionsText
                .style("display", "none");

            timeText
                .style("display", "none");

            feesText
                .style("display", "none");
        });

    let dataAll = data.map(function(d){
        return d["fees"];
    });
    
    var bars = bar.nodes();
    var bars1 = bar1.nodes();
    
    for(i = 0; i < bars.length; i++){
        if(i > 3)
            d3.select(bars[i]).style("fill", "#FFD964");
        
        if(i > 7)
            d3.select(bars[i]).style("fill", "#0DB4AA");
    }

    var xAxisGenerator = d3.axisBottom(x).ticks(12);
    xAxisGenerator.tickSize(-7);
    
    svg.append("g")
        .attr("class", "xAxis")
        .attr('transform', "translate(0," + histHeight + ")")
        .style("color", "#eee")
        .call(xAxisGenerator);

    var TransactionsText = svg
        .append("text")
        .attr("class", "TransactionsText")
        .style("display", "none")
        .attr("dx", "10px")
        .attr("dy", "-40px")
        .attr("text-anchor", "top")
        .attr("alignment-baseline", "middle");

    var timeText = svg
        .append("text")
        .attr("class", "TransactionsText")
        .style("display", "none")
        .attr("dx", "140px")
        .attr("dy", "-40px")
        .attr("text-anchor", "top")
        .attr("alignment-baseline", "middle");

    var feesText = svg
        .append("text")
        .attr("class", "TransactionsText")
        .style("display", "none")
        .attr("dx", "315px")
        .attr("dy", "-40px")
        .attr("text-anchor", "top")
        .attr("alignment-baseline", "middle");
        
    function mouseover(){
        
    }

    function mouseout(){
        
    }
    
});