*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling Test
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    maximize browser window
    execute javascript    window.scrollTo(0,5000)
    go to    https://demo.opencart.com/index.php?route=common/home&language=en-gb
    maximize browser window
    sleep    3
   # scroll element into view    xpath://a[contains(text(),'Canon EOS 5D')]
   #end of the page
   execute javascript    window.scrollTo(0,document.body.scrollHeight
   #Starting point
   execute javascript    window.scrollTo(0,-document.body.scrollHeight

    sleep    3