int greater_date(int date1, int date2){
	int yMask = 0xFFFF;
	int dMask = 0xFF0000;
	int mMask = 0xFF000000;
	if((date1 & yMask) > (date2 & yMask))
		return date1;
	else if((date2 & yMask) > (date1 & yMask))
			return date2;
		else if((date1 & mMask) > (date2 & mMask))
				return date1;
			else if((date2 & mMask) > (date1 & mMask))
					return date2;
				else if((date1 & dMask) > (date2 & dMask))
						return date1;
					else if((date2 & dMask) > (date1 & dMask))
						return date2;
						else return -1;
}
