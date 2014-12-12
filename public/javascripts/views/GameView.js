var GameView = Backbone.View.extend({
	render: function(){
		this.$el.empty();

		for (var i = 0; i < 1; i++) {
			var question = _.sample(this.collection.models);
			var view = new QuestionView({model: question});
			this.$el.append(view.render().$el);

		}
		return this;
	}
});