function specang = spectral_angle(data,band1,band2)
temp1 = data(:,:,band1);
temp2 = data(:,:,band2);

vec1 = temp1(:);
vec2 = temp2(:);

specang = dot(vec1,vec2)/(norm(vec1,2)*norm(vec2,2));
