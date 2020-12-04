var width = 223,
    height = 223,
    margin = 40;


let div = d3.select(".donut_persent")
    .style("opacity", 0);


d3.json("data.json").then(function(data){
    
    let names = data.map(function(d){
        return d["name"];
    });

    console.log(names);

    let dataAll = d3.sum(data.map(function(d){
        return d["value"];
    }));
    console.log(dataAll);

    // d3.select(".donut_persent")
    //     .selectAll("p")
    //     .data(data)
    //     .enter()
    //     .append("p")
    //     .text(function(d){
    //         return d.name + ", " + d.value;
    //     })
    //     .style("color", "black")
    //     .style("opacity", 1);

    
    let svg = d3.select(".donut")
        .append("svg")
        .attr("width", width)
        .attr("height", height);
    
    let g = svg
        .append("g")
        .attr("transform", `translate(${width / 2}, ${height / 2})`);

    let radius = Math.min(width, height) / 2;

    let arc = d3.arc()
        .outerRadius(radius)
        .innerRadius(55);
    
    let color = d3.scaleOrdinal(["#FF1C45", "#E9A237", "#FFCA42", "#0DB432", "#0DB4AA","#2B5B9D", "#3782E9", "#7C00F8", "#EB00FF", "#FF0099"]);
    
    let pie = d3.pie()
        .value(function(d){
            return d.value;
        });
    
    


    let pied_data = pie
        .value(function(d){
            // console.log(d.value);
            return d.value;
        })

    let num;

    

    let arcs = g
        .selectAll(".arc")
        .data(pie(data))
        .join((enter) => enter.append("path").attr("class", "arc"))
        .on("mouseover", function(d, i){
            num = (Math.round((i.value / dataAll) * 100)).toString() + '%';
            d3.selectAll(".arc").transition()
                .duration("50")
                .attr("opacity", ".2");

            d3.select(this).transition()
            .duration("50")
            .attr("opacity", "1");

            d3.select(".donut_text").transition()
                .duration("50")
                .attr("opacity", "1")
                .text(num);

            


        })
        .on("mouseout", function(d, i){
            d3.selectAll(".arc").transition()
                .duration("50")
                .attr("opacity", "1");

            d3.select(".donut_text").transition()
                .duration("50")
                .attr("opacity", "0");
        });
    
    svg.append("text")
        .attr("class", "donut_text")
        .attr("dy", "117px")
        .attr("dx", "115px")
        .attr("opacity", 0)
        .style("text-anchor", "middle")
        .style("font-family", "Lato, sans-serif")
        .style("font-size", "16px");



    
        
    d3.select(".exchange_body")
        .selectAll("p")
        .data(data)
        .enter()
        .append("p")
        .attr("class", "exchange_name")
        .append("span")
        .attr("class","exchange_circle")
        .style("background", (d, i) => color(i));

    d3.selectAll(".exchange_name")
        .append("span")
        .text(function(i){
            return i.name;
        });
     
        




    arcs.attr("d", arc).style("fill", (d, i) => color(i));



});






    