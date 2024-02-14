-- chunkname: @/modules/gamelib/ui/uiaccordeonbutton.lua

UIAccordeonButton = extends(UIButton, "UIAccordeonButton")

function UIAccordeonButton.create()
	local btn = UIAccordeonButton.internalCreate()

	btn:setOn(false)

	return btn
end

function UIAccordeonButton:onClick()
	local contentPanel = self:getParent():getChildAfter(self)

	if not contentPanel or #contentPanel:getChildren() == 0 then
		return
	end

	if not self:isOn() then
		contentPanel:getLayout():setFitChildren(true)
	else
		contentPanel:getLayout():setFitChildren(false)
		contentPanel:setHeight(0)
	end

	self:setOn(not self:isOn())
end
