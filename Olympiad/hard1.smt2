(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun opt () Real)
(assert (> a 0))
(assert (> b 0))
(assert (> c 0))
(assert (= 1 (* a b c)))
(assert (= (* (* a a a (+ b c)) (* b b b (+ c a)) (* c c c (+ a b)) opt) (+ (* b b b (+ c a) c c c (+ a b)) (* a a a (+ b c) c c c (+ a b)) (* a a a (+ b c) b b b (+ c a)) )))
(minimize opt)
(check-sat)
(get-objectives)
