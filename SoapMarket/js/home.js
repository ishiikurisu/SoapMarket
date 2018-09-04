function draw(products) {
    var limit = products.length;
    var outlet = "";

    for (var i = 0; i < limit; i++) {
        product = products[i];
        outlet += "<div class='col-4'><h2>" + product['name'] + "</h2><p>Price: $" + product['price'] + "</p></div>";
    }

    return outlet;
}

$(document).ready(function () {
    // Getting most recent products
    $.ajax({
        url: 'Api/Products/default.aspx/Read',
        async: true,
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        dataType: 'json',
        data: "{quantity: \"3\"}",
        success: function (data) {
            $('#example-products').html(draw(JSON.parse(data.d)['products']));
        },
        error: function (msg) {
            $('#example-products').text('Error loading stuff: ' + msg);
        }
    });
});
