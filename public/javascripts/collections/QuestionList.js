var QuestionList = Backbone.Collection.extend({
	url: '/api/facts',
	model: Question
});