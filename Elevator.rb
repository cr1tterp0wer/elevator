
class Elevator

	@@curFloor = 0
	@@totalFloors = 20;
	@@isGoingUp   = true;

	@@upQueue   = [2,3,7,8]
	@@downQueue = [4,6,12,15]

	def nextFloor
		if(@@isGoingUp && @@upQueue.length>0)
			@@curFloor = @@upQueue.pop()
		else
			@@curFloor = @@downQueue.pop()
		end
	end

	def pressButton(button, direction)
		if(direction == "UP")
		    @@upQueue.push(button)
		else
			@@downQueue.push(button)
		end
	end

	def printCurFloor
	    puts(@@curFloor)
	end

end

e = Elevator.new

e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
e.nextFloor()
e.printCurFloor()
