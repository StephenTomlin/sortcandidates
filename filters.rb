# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'date'

def find(id)
  @candidates.select { |hash| hash[:id] === id }.first
end

def experienced?(candidate)
    if candidate[:years_of_experience] >= 2
      return true
    else
      return false
    end
end

def qualified_candidates(candidates)
  candidates = @candidates.select { |hash| hash[:years_of_experience] > 0 && hash[:github_points] >= 100 && ((hash[:languages].include? 'Python') || (hash[:languages].include? 'Ruby')) && (hash[:date_applied] > (Date.today - 14.days)) && hash[:age] > 17}
end


def ordered_by_qualifications(candidates)
  candidates.sort_by {|k| k[:years_of_experience] || k[:github_points]}.reverse
end
