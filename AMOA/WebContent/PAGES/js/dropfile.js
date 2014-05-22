(function(s){
	
	var o = {
		message: 'Déposez vos fichiers ici',
		url: '../upload.do'
	};
	
	s.fn.dropfile = function(oo){
		if(oo) $.extend(o,oo);
		
		this.each(function(){
			$('<span>').append(o.message).appendTo(this);
			
			$(this).bind({
			dragenter : function(e){
				e.preventDefault();
				console.log('dragenter');
			},
			dragover : function(e){
				e.preventDefault();
				$(this).addClass('hover');
				console.log('dragover');  
			},
			dragleave : function(e){
				e.preventDefault();
				$(this).removeClass('hover');
				console.log('dragleave');  
			}		
		});
		this.addEventListener('drop', function(e){
			e.preventDefault();
			$(this).removeClass('hover');
			var files = e.dataTransfer.files;
			upload(files, this, 0);
		}, false);
		
		});	
		function upload(files, area, pos){
			var file = files[pos];
			var formData = new FormData();
            formData.append("file", file);
            
			var xhr = new XMLHttpRequest();
			xhr.open('post', o.url, true);
			
			xhr.send(formData);
		}
	};
})(jQuery);