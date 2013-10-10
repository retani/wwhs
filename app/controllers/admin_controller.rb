class AdminController < ApplicationController

before_filter :authenticate
layout 'admin'

def index

end

end
