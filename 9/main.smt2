(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun res () Int)

(assert (> a 0))
(assert (> b 0))
(assert (> c 0))

(assert (= (+ (* a a) (* b b)) (* c c)))

(assert (= (+ (+ a b) c) 1000))

(assert (= res (* (* a b) c)))


(check-sat)
(get-model)
