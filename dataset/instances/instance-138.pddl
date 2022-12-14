(define (problem instance-138)
(:domain drone-delivery)
(:objects
 d0 d1 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 m2 m3 m4 m5 m6 m7 - medicine
 )
(:init

	;; depots
	(is-depot l0)
	(is-depot l9)

	;; drones
	(located-at d0 l9)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 50)
	(= (battery-capacity d0) 150)
	(= (battery-level d0) 150)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 4)
	(located-at d1 l9)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 50)
	(= (battery-capacity d1) 150)
	(= (battery-level d1) 150)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 4)

	;; medicines
	(located-at m0 l2)
	(noexpired m0)
	(at 100(not (noexpired m0)))
	(= (weight m0) 20)
	(located-at m1 l4)
	(noexpired m1)
	(at 100(not (noexpired m1)))
	(= (weight m1) 20)
	(located-at m2 l0)
	(noexpired m2)
	(at 150(not (noexpired m2)))
	(= (weight m2) 2)
	(located-at m3 l7)
	(noexpired m3)
	(at 120(not (noexpired m3)))
	(= (weight m3) 10)
	(located-at m4 l8)
	(noexpired m4)
	(at 120(not (noexpired m4)))
	(= (weight m4) 10)
	(located-at m5 l2)
	(noexpired m5)
	(at 400(not (noexpired m5)))
	(= (weight m5) 2)
	(located-at m6 l1)
	(noexpired m6)
	(at 400(not (noexpired m6)))
	(= (weight m6) 2)
	(located-at m7 l6)
	(noexpired m7)
	(at 100(not (noexpired m7)))
	(= (weight m7) 20)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 40)
	(connected l0 l4)
	(= (travel-time l0 l4) 20)
	(connected l0 l5)
	(= (travel-time l0 l5) 20)
	(connected l0 l6)
	(= (travel-time l0 l6) 30)
	(connected l0 l8)
	(= (travel-time l0 l8) 70)
	(connected l1 l0)
	(= (travel-time l1 l0) 40)
	(connected l1 l3)
	(= (travel-time l1 l3) 60)
	(connected l1 l4)
	(= (travel-time l1 l4) 30)
	(connected l1 l6)
	(= (travel-time l1 l6) 40)
	(connected l1 l7)
	(= (travel-time l1 l7) 40)
	(connected l1 l8)
	(= (travel-time l1 l8) 30)
	(connected l2 l3)
	(= (travel-time l2 l3) 30)
	(connected l2 l4)
	(= (travel-time l2 l4) 60)
	(connected l2 l9)
	(= (travel-time l2 l9) 40)
	(connected l3 l1)
	(= (travel-time l3 l1) 60)
	(connected l3 l2)
	(= (travel-time l3 l2) 30)
	(connected l3 l4)
	(= (travel-time l3 l4) 60)
	(connected l3 l9)
	(= (travel-time l3 l9) 50)
	(connected l4 l0)
	(= (travel-time l4 l0) 20)
	(connected l4 l1)
	(= (travel-time l4 l1) 30)
	(connected l4 l2)
	(= (travel-time l4 l2) 60)
	(connected l4 l3)
	(= (travel-time l4 l3) 60)
	(connected l4 l5)
	(= (travel-time l4 l5) 20)
	(connected l4 l6)
	(= (travel-time l4 l6) 10)
	(connected l4 l9)
	(= (travel-time l4 l9) 60)
	(connected l5 l0)
	(= (travel-time l5 l0) 20)
	(connected l5 l4)
	(= (travel-time l5 l4) 20)
	(connected l5 l8)
	(= (travel-time l5 l8) 40)
	(connected l6 l0)
	(= (travel-time l6 l0) 30)
	(connected l6 l1)
	(= (travel-time l6 l1) 40)
	(connected l6 l4)
	(= (travel-time l6 l4) 10)
	(connected l6 l7)
	(= (travel-time l6 l7) 30)
	(connected l7 l1)
	(= (travel-time l7 l1) 40)
	(connected l7 l6)
	(= (travel-time l7 l6) 30)
	(connected l7 l8)
	(= (travel-time l7 l8) 50)
	(connected l7 l9)
	(= (travel-time l7 l9) 20)
	(connected l8 l0)
	(= (travel-time l8 l0) 70)
	(connected l8 l1)
	(= (travel-time l8 l1) 30)
	(connected l8 l5)
	(= (travel-time l8 l5) 40)
	(connected l8 l7)
	(= (travel-time l8 l7) 50)
	(connected l9 l2)
	(= (travel-time l9 l2) 40)
	(connected l9 l3)
	(= (travel-time l9 l3) 50)
	(connected l9 l4)
	(= (travel-time l9 l4) 60)
	(connected l9 l7)
	(= (travel-time l9 l7) 20)
)
(:goal (and
	(delivered m0 l8)
	(delivered m1 l2)
	(delivered m2 l5)
	(delivered m3 l6)
	(delivered m4 l6)
	(delivered m5 l4)
	(delivered m6 l4)
	(delivered m7 l8)
)))
