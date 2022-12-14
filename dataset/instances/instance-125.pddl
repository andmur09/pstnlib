(define (problem instance-125)
(:domain drone-delivery)
(:objects
 d0 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 m2 m3 m4 m5 m6 m7 - medicine
 )
(:init

	;; depots
	(is-depot l3)
	(is-depot l1)

	;; drones
	(located-at d0 l1)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 10)
	(= (battery-capacity d0) 50)
	(= (battery-level d0) 50)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 10)

	;; medicines
	(located-at m0 l3)
	(noexpired m0)
	(at 300(not (noexpired m0)))
	(= (weight m0) 3)
	(located-at m1 l0)
	(noexpired m1)
	(at 400(not (noexpired m1)))
	(= (weight m1) 2)
	(located-at m2 l8)
	(noexpired m2)
	(at 500(not (noexpired m2)))
	(= (weight m2) 5)
	(located-at m3 l9)
	(noexpired m3)
	(at 400(not (noexpired m3)))
	(= (weight m3) 2)
	(located-at m4 l0)
	(noexpired m4)
	(at 180(not (noexpired m4)))
	(= (weight m4) 1)
	(located-at m5 l0)
	(noexpired m5)
	(at 120(not (noexpired m5)))
	(= (weight m5) 10)
	(located-at m6 l5)
	(noexpired m6)
	(at 150(not (noexpired m6)))
	(= (weight m6) 2)
	(located-at m7 l5)
	(noexpired m7)
	(at 120(not (noexpired m7)))
	(= (weight m7) 10)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 20)
	(connected l0 l2)
	(= (travel-time l0 l2) 80)
	(connected l0 l3)
	(= (travel-time l0 l3) 100)
	(connected l0 l4)
	(= (travel-time l0 l4) 40)
	(connected l0 l6)
	(= (travel-time l0 l6) 50)
	(connected l0 l9)
	(= (travel-time l0 l9) 30)
	(connected l1 l0)
	(= (travel-time l1 l0) 20)
	(connected l1 l2)
	(= (travel-time l1 l2) 90)
	(connected l1 l4)
	(= (travel-time l1 l4) 60)
	(connected l1 l5)
	(= (travel-time l1 l5) 50)
	(connected l1 l9)
	(= (travel-time l1 l9) 40)
	(connected l2 l0)
	(= (travel-time l2 l0) 80)
	(connected l2 l1)
	(= (travel-time l2 l1) 90)
	(connected l2 l4)
	(= (travel-time l2 l4) 70)
	(connected l2 l6)
	(= (travel-time l2 l6) 10)
	(connected l2 l9)
	(= (travel-time l2 l9) 30)
	(connected l3 l0)
	(= (travel-time l3 l0) 100)
	(connected l3 l4)
	(= (travel-time l3 l4) 20)
	(connected l3 l5)
	(= (travel-time l3 l5) 50)
	(connected l3 l7)
	(= (travel-time l3 l7) 30)
	(connected l3 l9)
	(= (travel-time l3 l9) 20)
	(connected l4 l0)
	(= (travel-time l4 l0) 40)
	(connected l4 l1)
	(= (travel-time l4 l1) 60)
	(connected l4 l2)
	(= (travel-time l4 l2) 70)
	(connected l4 l3)
	(= (travel-time l4 l3) 20)
	(connected l4 l5)
	(= (travel-time l4 l5) 30)
	(connected l4 l6)
	(= (travel-time l4 l6) 50)
	(connected l4 l7)
	(= (travel-time l4 l7) 80)
	(connected l4 l9)
	(= (travel-time l4 l9) 30)
	(connected l5 l1)
	(= (travel-time l5 l1) 50)
	(connected l5 l3)
	(= (travel-time l5 l3) 50)
	(connected l5 l4)
	(= (travel-time l5 l4) 30)
	(connected l5 l6)
	(= (travel-time l5 l6) 20)
	(connected l5 l8)
	(= (travel-time l5 l8) 60)
	(connected l5 l9)
	(= (travel-time l5 l9) 50)
	(connected l6 l0)
	(= (travel-time l6 l0) 50)
	(connected l6 l2)
	(= (travel-time l6 l2) 10)
	(connected l6 l4)
	(= (travel-time l6 l4) 50)
	(connected l6 l5)
	(= (travel-time l6 l5) 20)
	(connected l6 l7)
	(= (travel-time l6 l7) 70)
	(connected l7 l3)
	(= (travel-time l7 l3) 30)
	(connected l7 l4)
	(= (travel-time l7 l4) 80)
	(connected l7 l6)
	(= (travel-time l7 l6) 70)
	(connected l8 l5)
	(= (travel-time l8 l5) 60)
	(connected l9 l0)
	(= (travel-time l9 l0) 30)
	(connected l9 l1)
	(= (travel-time l9 l1) 40)
	(connected l9 l2)
	(= (travel-time l9 l2) 30)
	(connected l9 l3)
	(= (travel-time l9 l3) 20)
	(connected l9 l4)
	(= (travel-time l9 l4) 30)
	(connected l9 l5)
	(= (travel-time l9 l5) 50)
)
(:goal (and
	(delivered m0 l8)
	(delivered m1 l6)
	(delivered m2 l4)
	(delivered m3 l6)
	(delivered m4 l8)
	(delivered m5 l4)
	(delivered m6 l6)
	(delivered m7 l9)
)))
