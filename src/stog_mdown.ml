let fun_mdown stog env args subs = 
  let input = 
    match subs with
      [ Xtmpl.D text ] -> text
    | _ -> String.concat "" (List.map Xtmpl.string_of_xml subs)
  in
  let mdown = Omd.of_string input in
  let html = Omd.to_html mdown in
  Xtmpl.apply_to_string stog env html 

let () = Stog_plug.register_html_base_rule ("", "mdown") fun_mdown

