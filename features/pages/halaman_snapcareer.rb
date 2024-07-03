class SnapcareerPage < SitePrism::Page
    element :snap_logo, '#mainNav > div > a.navbar-brand.js-scroll-trigger > img' 
    element :navbar_home, '#navbarResponsive > ul:nth-child(1) > li:nth-child(1) > a'  
    element :navbar_searchjob, '#navbarResponsive > ul:nth-child(1) > li:nth-child(2) > a' 
    element :navbar_companies, '#navbarResponsive > ul:nth-child(1) > li:nth-child(3) > a' 
    element :navbar_news, '#navbarResponsive > ul:nth-child(1) > li:nth-child(4) > a'
    element :navbar_contactus, '#navbarResponsive > ul:nth-child(1) > li.nav-item.d-none.d-lg-block.mr-4 > a'
    element :headline, '#page-top > div.container.header-content > div > div:nth-child(1) > div.header-title.d-flex.justify-content-center.m-t-2.mb-2'
    element :btn_register, '#registerBtn'
    element :btn_login, '#loginBtn'

end