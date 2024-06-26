(define (problem CrewPlanning_1crew_2day_80utilization)
(:domain CrewPlanning)
(:objects
	d0 d1 d2 d3 - day

	c1 - crewmember
	mcs1 - medicalstate

	spaceshipfilter - filterstate

	pa1_1 pa1_2 pa1_3 pa1_4 pa1_5 - payloadact

	e1 - exerequipment
)

(:init
	(currentday c1 d0)
	(done_sleep c1 d0)
	(available c1)
	(initiated d1)
	(next d0 d1)
	(next d1 d2)
	(next d2 d3)
	
	(unused e1)
	)

(:goal
(and
	(done_sleep c1 d1)
	(done_sleep c1 d2)
	(initiated d3)


	(changed spaceshipfilter d1)
	(changed spaceshipfilter d2)


	(payload_act_completed pa1_1 d1)
	(payload_act_completed pa1_2 d1)
	(payload_act_completed pa1_3 d1)
	(payload_act_completed pa1_4 d1)
	(payload_act_completed pa1_5 d1)
)
)
(:metric minimize (total-time))
)
