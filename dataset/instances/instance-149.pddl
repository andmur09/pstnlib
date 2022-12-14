(define (problem instance-149)
(:domain drone-delivery)
(:objects
 d0 d1 d2 - drone
 l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 - location
 m0 m1 m2 m3 m4 m5 m6 m7 - medicine
 )
(:init

	;; depots
	(is-depot l9)
	(is-depot l4)

	;; drones
	(located-at d0 l4)
	(noloading d0)
	(nocharging d0)
	(= (load-capacity d0) 20)
	(= (battery-capacity d0) 100)
	(= (battery-level d0) 100)
	(= (battery-rate d0) 1)
	(= (recharge-rate d0) 5)
	(located-at d1 l4)
	(noloading d1)
	(nocharging d1)
	(= (load-capacity d1) 20)
	(= (battery-capacity d1) 100)
	(= (battery-level d1) 100)
	(= (battery-rate d1) 1)
	(= (recharge-rate d1) 5)
	(located-at d2 l4)
	(noloading d2)
	(nocharging d2)
	(= (load-capacity d2) 20)
	(= (battery-capacity d2) 100)
	(= (battery-level d2) 100)
	(= (battery-rate d2) 1)
	(= (recharge-rate d2) 5)

	;; medicines
	(located-at m0 l2)
	(noexpired m0)
	(at 150(not (noexpired m0)))
	(= (weight m0) 2)
	(located-at m1 l5)
	(noexpired m1)
	(at 500(not (noexpired m1)))
	(= (weight m1) 5)
	(located-at m2 l9)
	(noexpired m2)
	(at 100(not (noexpired m2)))
	(= (weight m2) 20)
	(located-at m3 l0)
	(noexpired m3)
	(at 120(not (noexpired m3)))
	(= (weight m3) 10)
	(located-at m4 l0)
	(noexpired m4)
	(at 400(not (noexpired m4)))
	(= (weight m4) 2)
	(located-at m5 l3)
	(noexpired m5)
	(at 100(not (noexpired m5)))
	(= (weight m5) 20)
	(located-at m6 l3)
	(noexpired m6)
	(at 150(not (noexpired m6)))
	(= (weight m6) 2)
	(located-at m7 l3)
	(noexpired m7)
	(at 120(not (noexpired m7)))
	(= (weight m7) 10)

	;; locations
	(connected l0 l1)
	(= (travel-time l0 l1) 80)
	(connected l0 l2)
	(= (travel-time l0 l2) 20)
	(connected l0 l3)
	(= (travel-time l0 l3) 30)
	(connected l0 l5)
	(= (travel-time l0 l5) 70)
	(connected l0 l8)
	(= (travel-time l0 l8) 30)
	(connected l0 l9)
	(= (travel-time l0 l9) 50)
	(connected l1 l0)
	(= (travel-time l1 l0) 80)
	(connected l1 l4)
	(= (travel-time l1 l4) 70)
	(connected l1 l5)
	(= (travel-time l1 l5) 20)
	(connected l2 l0)
	(= (travel-time l2 l0) 20)
	(connected l2 l3)
	(= (travel-time l2 l3) 50)
	(connected l2 l6)
	(= (travel-time l2 l6) 20)
	(connected l2 l9)
	(= (travel-time l2 l9) 20)
	(connected l3 l0)
	(= (travel-time l3 l0) 30)
	(connected l3 l2)
	(= (travel-time l3 l2) 50)
	(connected l3 l4)
	(= (travel-time l3 l4) 20)
	(connected l3 l5)
	(= (travel-time l3 l5) 20)
	(connected l3 l6)
	(= (travel-time l3 l6) 30)
	(connected l3 l8)
	(= (travel-time l3 l8) 70)
	(connected l3 l9)
	(= (travel-time l3 l9) 20)
	(connected l4 l1)
	(= (travel-time l4 l1) 70)
	(connected l4 l3)
	(= (travel-time l4 l3) 20)
	(connected l4 l5)
	(= (travel-time l4 l5) 90)
	(connected l4 l6)
	(= (travel-time l4 l6) 50)
	(connected l4 l8)
	(= (travel-time l4 l8) 20)
	(connected l4 l9)
	(= (travel-time l4 l9) 40)
	(connected l5 l0)
	(= (travel-time l5 l0) 70)
	(connected l5 l1)
	(= (travel-time l5 l1) 20)
	(connected l5 l3)
	(= (travel-time l5 l3) 20)
	(connected l5 l4)
	(= (travel-time l5 l4) 90)
	(connected l5 l6)
	(= (travel-time l5 l6) 80)
	(connected l5 l7)
	(= (travel-time l5 l7) 20)
	(connected l5 l8)
	(= (travel-time l5 l8) 60)
	(connected l6 l2)
	(= (travel-time l6 l2) 20)
	(connected l6 l3)
	(= (travel-time l6 l3) 30)
	(connected l6 l4)
	(= (travel-time l6 l4) 50)
	(connected l6 l5)
	(= (travel-time l6 l5) 80)
	(connected l6 l9)
	(= (travel-time l6 l9) 30)
	(connected l7 l5)
	(= (travel-time l7 l5) 20)
	(connected l8 l0)
	(= (travel-time l8 l0) 30)
	(connected l8 l3)
	(= (travel-time l8 l3) 70)
	(connected l8 l4)
	(= (travel-time l8 l4) 20)
	(connected l8 l5)
	(= (travel-time l8 l5) 60)
	(connected l8 l9)
	(= (travel-time l8 l9) 30)
	(connected l9 l0)
	(= (travel-time l9 l0) 50)
	(connected l9 l2)
	(= (travel-time l9 l2) 20)
	(connected l9 l3)
	(= (travel-time l9 l3) 20)
	(connected l9 l4)
	(= (travel-time l9 l4) 40)
	(connected l9 l6)
	(= (travel-time l9 l6) 30)
	(connected l9 l8)
	(= (travel-time l9 l8) 30)
)
(:goal (and
	(delivered m0 l7)
	(delivered m1 l7)
	(delivered m2 l2)
	(delivered m3 l2)
	(delivered m4 l5)
	(delivered m5 l0)
	(delivered m6 l8)
	(delivered m7 l8)
)))
