var exp = require('express');
var mon = require('mongoose');
var bod = require('body-parser');
var app = exp();

mon.connect('mongodb://localhost/campgrounds_app');

var schema = mon.Schema({
    name: String,
    image: String
});

var Campground = mon.model('Campground', schema);

/*
Campground.create({
    name: 'Whitewater State Park',
    image: 'https://farm6.staticflickr.com/5743/22796146589_1c893c77db_b.jpg'
});

Campground.create({
    name: 'Superior National Forest',
    image: 'https://farm1.staticflickr.com/572/22857434669_6da2358cbd_b.jpg'
});
*/

app.set('view engine', 'ejs');
app.use(exp.static('public'));
app.use(bod.urlencoded({extended: true}));

app.get('/', function(req, res) {
    res.render('home');
});
app.get('/campgrounds', function(req, res) {
    Campground.find({}, function(err, records) {
        if (err) {
            console.log(err);
        }
        else {
            res.render('campgrounds', {campgrounds: records});
        }
    });
});
app.get('/campgrounds/new', function(req, res) {
    res.render('new-campground');
});
app.post('/campgrounds', function(req, res) {
    console.log(req.body);
    res.end();
});
app.get('/campgrounds/:id', function(req, res) {
    Campground.findById(req.params.id, function(err, record) {
        res.render('show', {campground: record});
    });
});
app.listen(3000, process.env.IP, function() {
    console.log('The campground server is running...');
});
