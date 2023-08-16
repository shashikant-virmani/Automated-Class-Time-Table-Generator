<script>
	 const courseInfo = {
				BTech: {
					CSE: {
						SemesterI : {
							
						},
						SemesterII : {
							
						},
						SemesterIII : {}, SemesterIV : {}, SemesterV : {}, SemesterVI : {},
						SemesterVII : {}, SemesterVIII : {}
					},
					ECE: {
					SemesterI : {
							
						},
						SemesterII : {
							
						},
						SemesterIII : {}, SemesterIV : {}, SemesterV : {}, SemesterVI : {},
						SemesterVII : {}, SemesterVIII : {}
					},
					Mech: {
						SemesterI : {
							
						},
						SemesterII : {
							
						},
						SemesterIII : {}, SemesterIV : {}, SemesterV : {}, SemesterVI : {},
						SemesterVII : {}, SemesterVIII : {}
					},
					
				},
				MCA : {
					MCA : {
						Semester_1 : {
							
						},
						Semester_2 : {
							
						},
						Semester_3 : {}, Semester_4 : {}, Semester_5 : {}, Semester_6 : {},
					},
				},
				MTech: {
					CSE: {
							SemesterI : {
							
						},
						SemesterII : {
							
						},
						SemesterIII : {}, SemesterIV : {},
					},
					ECE: {
						SemesterI : {
							
						},
						SemesterII : {
							
						},
						SemesterIII : {}, SemesterIV : {},
					},
				},
			}; 
	 

		window.onload = function() {
			const courseSelection = document.querySelector("#course"),
				branchSelection = document.querySelector("#branch"),
				semesterSelect = document.querySelector("#semester"),
				submitSelect = document.querySelector("#submit-btn");
			
			branchSelection.disabled = true;
			semesterSelect.disabled =true;
			submitSelect.disabled = true;
					
			 for(course in courseInfo){
				courseSelection.options[courseSelection.options.length] = 
					new Option(course, course);
			 } 
			 
			 courseSelection.onchange = (e) => {
				 branchSelection.disabled = false;
				 	
				 branchSelection.length = 1;
				 semesterSelect.length = 1;
				 semesterSelect.disabled = true;
				 submitSelect.disabled = true;
				 
				 if(e.target.selectedIndex < 1) return;
				 
				 for(let branch in courseInfo[e.target.value]){
					 branchSelection.options[branchSelection.options.length] = 
						 new Option(branch, branch);
				 }
			 }
			 
			 branchSelection.onchange = (e) => {
				 semesterSelect.disabled = false;
				 semesterSelect.length = 1;
				 submitSelect.disabled = true;
				 for(let semester in courseInfo[courseSelection.value][e.target.value]){
					 semesterSelect.options[semesterSelect.options.length] =
						 new Option(semester, semester);
				 }
			 }
			 
			 semesterSelect.onchange = (e) => {
				 submitSelect.disabled = false;
			 }
			 
			
		};
	</script>
	