module ApplicationHelper
  def number_to_currency_clp(value_guarantee)
    number_to_currency(value_guarantee, :unit => "$ ", :separator => ".", :precision => 0)
  end

  def capitalize_name(income_applicant)
    income_applicant.gsub(/[A-Za-z']+/,&:capitalize)
  end

  def capitalize_detail(detail)
    detail.try(:capitalize)
  end

  def due_date_format(due_date)
    due_date.try(:strftime, "%d/%m/%Y")
  end

  def devolution_date_format(devolution_date)
    devolution_date.try(:strftime, "%d/%m/%Y")
  end

  def income_date_format(income_date)
    income_date.try(:strftime, "%d/%m/%Y")
  end
end
