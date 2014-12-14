constructify_phone_layers = Framer.Importer.load "imported/Constructify_Phone_2 updated"

console.log(constructify_phone_layers);

main_screen = constructify_phone_layers['Main Screen'];
main_menu_screen = constructify_phone_layers['Main Screen with Menu'];
create_project_screen = constructify_phone_layers["Create Project Screen"];
main_update_screen = constructify_phone_layers['Main Screen with Update'];
tasks_screen = constructify_phone_layers['Tasks Screen'];
create_task_screen = constructify_phone_layers['Create Task Screen'];
detailed_task_screen = constructify_phone_layers['Detailed Task Screen'];
workers_screen = constructify_phone_layers['Workers Screen'];
detailed_worker_screen_copy = constructify_phone_layers['Detailed Worker Screen copy'];
detailed_worker_screen_copy_2 = constructify_phone_layers['Detailed Worker Screen copy 2'];
detailed_worker_screen = constructify_phone_layers['Detailed Worker Screen'];

# Set other layers invisible initially
main_menu_screen.opacity = 0;
main_update_screen.opacity = 0;
create_project_screen.opacity = 0;
workers_screen.opacity = 0;
detailed_worker_screen.opacity = 0;
detailed_worker_screen_copy.opacity = 0;
detailed_worker_screen_copy_2.opacity = 0;
tasks_screen.opacity = 0;
create_task_screen.opacity = 0;
detailed_task_screen.opacity = 0;

main_screen.on Events.Click, ->	

	main_screen.on Events.AnimationStart, ->
		create_project_screen.opacity = 1;
	
	main_screen.on Events.AnimationEnd, ->
		main_screen.opacity = 0;
				
	main_screen.animate
		properties:
			x: -640
		curve: "ease-in-out"
			
	create_project_screen.on Events.Click, ->
		
		create_project_screen.on Events.AnimationStart, ->
			tasks_screen.opacity = 1;	
		
		create_project_screen.on Events.AnimationEnd, ->
			create_project_screen.opacity = 0;

		create_project_screen.animate
			properties:
				x: -640
			curve: "ease-in-out"
		
		tasks_screen.on Events.Click, ->
			tasks_screen.on Events.AnimationStart, ->
				detailed_task_screen.opacity = 1;
			
			tasks_screen.on Events.AnimationEnd, ->
				tasks_screen.opacity = 0;
				
			tasks_screen.animate
				properties:
					x: -640
				curve: "ease-in-out"
				
			detailed_task_screen.on Events.Click, ->
				detailed_task_screen.on Events.AnimationStart, ->
					workers_screen.opacity = 1;
			
				detailed_task_screen.on Events.AnimationEnd, ->
					detailed_task_screen.opacity = 0;
				
				detailed_task_screen.animate
					properties:
						x: -640
					curve: "ease-in-out"
					
				workers_screen.on Events.Click, ->
					workers_screen.on Events.AnimationStart, ->
						detailed_worker_screen.opacity = 1;
			
					workers_screen.on Events.AnimationEnd, ->
						workers_screen.opacity = 0;
				
					workers_screen.animate
						properties:
							x: -640
						curve: "ease-in-out"
						
				detailed_worker_screen.on Events.Click, ->
					detailed_worker_screen.on Events.AnimationStart, ->
						detailed_worker_screen_copy_2.opacity = 1;
			
					detailed_worker_screen.on Events.AnimationEnd, ->
						detailed_worker_screen.opacity = 0;
				
					detailed_worker_screen.animate
						properties:
							x: -640
						curve: "ease-in-out"
						
					detailed_worker_screen_copy_2.on Events.Click, ->
						detailed_worker_screen_copy_2.on Events.AnimationStart, ->
							detailed_worker_screen_copy.opacity = 1;
			
						detailed_worker_screen_copy_2.on Events.AnimationEnd, ->
							detailed_worker_screen_copy_2.opacity = 0;
				
						detailed_worker_screen_copy_2.animate
							properties:
								x: -640
							curve: "ease-in-out"
