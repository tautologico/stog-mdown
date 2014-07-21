let fun_mdown stog env args subs = 
  (stog, "")

let () = Stog_plug.register_html_base_rule ("", "mdown") fun_mdown

