#   Gentoo Council Web App - to help Gentoo Council do their job better
#   Copyright (C) 2011 Joachim Filip Bartosik
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as
#   published by the Free Software Foundation, version 3 of the License
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

class Object
  def should_receive_delayed(method, *args)
    m = RSpec::Mocks::Mock.new('proxy')
    if args.empty?
      m.should_receive(method)
    else
      m.should_receive(method).with(*args)
    end
    self.should_receive(:delay).and_return(m)
  end
end
