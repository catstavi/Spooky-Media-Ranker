module IndexHelper

  def index_page(upvote_path, new_path, db_array)
    html = "<table>
              <tr>
                <th> Ranking </th>
                <th> Name </th>
                <th> Upvote </th>
              </tr>"

    db_array.each do |medium|
              html += "<tr> <td> #{medium.rank } </td> <td> #{medium.name} </td>
                  <td>
                    <%= button_to 'Upvote', '#{upvote_path}(#{medium.id})', method: :patch % >
                    </td> </tr>"
              end


    html += "</table>
            <%= button_to \"View all Mediums\", root_path, method: :get %>
            <%= button_to \"Add a Historical Medium\", #{new_path}, method: :get %>"
    html.html_safe
  end

end
