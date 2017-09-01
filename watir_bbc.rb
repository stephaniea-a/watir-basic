require 'watir'

class Bbc

	def initialize
		@browser = Watir::Browser.new :chrome
	end

	def go_to_homepage
		@browser.goto 'http://bbc.co.uk'
	end

	def get_id(id_name)
		@browser.element(id: id_name)
	end

	def click_on_link(id)
		@browser.link(id: id).click
		# @browser.link(text: 'Sign in')
	end

	def username_field
		@browser.text_field(id: 'username-input')
	end

	def password_field
		@browser.text_field(id: 'password-input')
	end

	def click_button(button_id)
		@browser.button(id: button_id).click
	end

end

bbc = Bbc.new

bbc.go_to_homepage

bbc.get_id('idcta-link').visible?
bbc.get_id('idcta-link').exist?
bbc.click_on_link('idcta-link')

bbc.username_field.visible?
bbc.username_field.set("username")
bbc.password_field.set("username")
bbc.click_button('submit-button')
# bbc.get_id('username-input').value=('username')
# bbc.get_id('username-input').set('username')
# bbc.get_id('username-input').send_keys('username')
# bbc.get_id('password-input').send_keys('password')
# bbc.get_id('submit-button').click





