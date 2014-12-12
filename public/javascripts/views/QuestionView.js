var QuestionView  = Backbone.View.extend({
    template: _.template($('#question-template').html()),
    render: function(){
    	this.$el.html(this.template(this.model.toJSON()));
    	return this;
    },
    events: {
    	'click button': 'answer'
    },
    answer: function(event) { 
        var response = $(event.target).data('value');
        var answer = this.model.get('statement');
        if (response == answer) {
            this.$el.find('.answer').html("Correct: " + answer);
        } else {
            this.$el.find('.answer').html("Incorrect: " + answer);
        };
    }
});
