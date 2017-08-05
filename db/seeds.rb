#   To refresh the database:
#     delete all records and run 'rails db:seed'
#     (but it will take 16 craploads of time)

def get_all_info_from_one_page(page)
  bins = page.search('td span.monts a').map(&:text)

  bins.each_with_index do |bin, i|
    bin_link = page.link_with(:text => bin)
    bin_page = bin_link.click

    info = bin_page.search('td').map(&:text)
    info.each do |test|
      test.strip!
    end

    Bin.create(bin: info[0], brand: info[1], typecard: info[2],
               category: info[3], bank: info[4], bankurl: info[5],
               country: info[6], cshort: info[7], latitude: info[8], longitude: info[9])

  end
end

# Bin.delete_all

agent = Mechanize.new
page  = agent.get("https://bincheck.org")

countries = page.search('a.list-group-item').map(&:text)

countries.each do |country|
  country_link = page.link_with(:text => country)
  country_page = country_link.click

  get_all_info_from_one_page(country_page)
  while next_link = country_page.link_with(:text => 'Next →')
    country_page = next_link.click
    get_all_info_from_one_page(country_page)
  end
end