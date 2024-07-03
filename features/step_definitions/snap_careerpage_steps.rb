Given('User berada di halaman snap career page') do
    visit '/'
    sleep 1
    expect(@pusathalaman.snapcareerpage.has_snap_logo?).to be true
    end
    
When('User klik home') do
      sleep 1
      @pusathalaman.snapcareerpage.navbar_home.click
  
end
    
Then('User verify element homepage') do
        sleep 1
        expect(@pusathalaman.snapcareerpage.has_snap_logo?).to be true
        expect(@pusathalaman.snapcareerpage.has_navbar_home?).to be true
        expect(@pusathalaman.snapcareerpage.has_navbar_searchjob?).to be true
        expect(@pusathalaman.snapcareerpage.has_navbar_companies?).to be true
        expect(@pusathalaman.snapcareerpage.has_navbar_news?).to be true
        expect(@pusathalaman.snapcareerpage.has_navbar_contactus?).to be true
        expect(@pusathalaman.snapcareerpage.has_headline?).to be true
        expect(@pusathalaman.snapcareerpage.has_btn_register?).to be true
        expect(@pusathalaman.snapcareerpage.has_btn_login?).to be true
        sleep 3
      
end