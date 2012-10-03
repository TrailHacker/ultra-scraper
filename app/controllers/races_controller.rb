class RacesController < ApplicationController

  def by_distance

  end

  def by_name

  end

  def by_year

    year = params[:year]
    func = Proc.new do |tr|
      tr.at_css("td")[0].text[/.+\.(\d){4}$/] == year
    end

    rows = get_rows(func)
    races = create_races(rows)

  end

  def all
    respond_to do |format|
      format.json { render json: { url: url } }
    end
  end

  private

    def get_rows(code)
      url = APP_CONFIG['ultra_marathon_results_uri']
      doc = Nokogiri::HTML(open(url))
      current_row = doc.at_css(".KategorieHeader").first

      rows = []
      while current_row != nil do
        if code.call(current_row)
          rows << current_row
        end
        current_row = current_row.next
      end

      return rows

    end

    def create_races(rows)
      races = []
      rows.each do |row|
        date = row.at_css("td")[0].text
        name = row.at_css("td")[1].text
        url = row.at_css("td > a")[0][:href]
        distance = row.at_css("td")[2].text

      end
      return races
    end
end
