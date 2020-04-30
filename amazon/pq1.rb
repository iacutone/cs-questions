require 'pry'

# states = [1, 0, 0, 0, 0, 1, 0, 0]
# days = 1

states = [1, 1, 1, 0, 1, 1, 1, 1]
days = 2

def cellCompete(states, days)
  new_states = []

  return states if days == 0

  days -= 1
  states.each_with_index do |state, index|
    if index == 0
      new_state = activation(0, state, states[index+1] || 0)
    else
      new_state = activation(states[index-1], state, states[index+1] || 0)
    end

    new_states << new_state
  end

  cellCompete(new_states, days)
end

def activation(before, cell, after)
  if before == after
    0
  else
    1
  end
end

puts cellCompete(states, days)
