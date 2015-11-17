(define optimize
  (lambda (probe do_search search_state_box
           post_probe_inference extract_answer finished?)
    (let loop ()
      (if (finished?)
        (extract_answer)
        (begin
          (do_search)
          (if (contents_changed? search_state_box)
            (predict (probe ,(contents search_state_box))))
          (post_probe_inference)
          (loop))))))

