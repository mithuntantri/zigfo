INSERT INTO clients (client_id, client_name) VALUES ('1', 'SuperAdmin');
INSERT INTO clients (client_id, client_name) VALUES ('2', 'Admin');
INSERT INTO clients (client_id, client_name) VALUES ('3', 'Pilot');
INSERT INTO clients (client_id, client_name) VALUES ('4', 'Tailor');
INSERT INTO clients (client_id, client_name) VALUES ('5', 'User');

INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('FIRST100','Rs. 100 OFF on First Order',1477898999,false,true,false, 300, 100);
INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('SUPERZIG','FLAT 10% OFF on orders more than RS. 300',1477898999,true,false,false, 300, 10);
INSERT INTO coupons (coupon_id,description,expiry,only_new,only_first,only_app, min_amount, discount) VALUES ('APP10','FLAT 10% OFF on all orders using app',1477898999,true,false,true, 300, 10);

-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot1', '9:00 AM to 11:00 AM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot2', '11:00 AM to 1:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot3', '1:00 PM to 3:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot4', '3:00 PM to 5:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot5', '5:00 PM to 7:00 PM');
-- INSERT INTO slots (slot_id, slot_name) VALUES ('slot6', '7:00 PM to 9:00 PM');

INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f01', 'Calvin Klein', 'M', 'Shirts','Cotton', '1', '/img/fabrics/f101.jpg', '/img/fabrics/f102.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f02', 'Vimal', 'M', 'Suits','Woollen', '3', '/img/fabrics/f201.jpg', '/img/fabrics/f202.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f03', 'Calvin Klein', 'M', 'Suits','Woollen', '2', '/img/fabrics/f301.jpg', '/img/fabrics/f302.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f04', 'Raymonds', 'M', 'Shirts & Trousers','Cotton', '1', '/img/fabrics/f401.jpg', '/img/fabrics/f402.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f05', 'Raymonds', 'M', 'Shirts & Trousers','Woollen', '2', '/img/fabrics/f501.jpg', '/img/fabrics/f502.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f06', 'Raymonds', 'M', 'Shirts & Trousers','Woollen', '3', '/img/fabrics/f601.jpg', '/img/fabrics/f602.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f07', 'Raymonds', 'M', 'Shirts & Trousers','Cotton', '3', '/img/fabrics/f701.jpg', '/img/fabrics/f702.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f08', 'Vimal', 'F', 'Suits','Woollen', '2', '/img/fabrics/f801.jpg', '/img/fabrics/f802.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f09', 'Raymonds', 'M', 'Suits','Woollen', '1', '/img/fabrics/f901.jpg', '/img/fabrics/f902.jpg', 100, 3999, 3799, 'Grey Woollen Suit Clothin Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f10', 'Calvin Klein', 'M', 'Shirts','Cotton', '3', '/img/fabrics/f1001.jpg', '/img/fabrics/f1002.jpg', 100, 899, 849, 'White & Black Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f11', 'Vimal', 'M', 'Suits','Woollen', '3', '/img/fabrics/f1101.jpg', '/img/fabrics/f1102.jpg', 100, 3999, 3799, 'Blue Egyptian Giza Cotton Shirt Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');
INSERT INTO fabrics (fabric_id, brand, gender, category, material, quality, img1, img2, quantity, rate, disc_rate, title, description) VALUES ('f12', 'Calvin Klein', 'F', 'Suits','Woollen', '2', '/img/fabrics/f1201.jpg', '/img/fabrics/f1202.jpg', 100, 3999, 3799, 'Pink Shirt Clothing Fabric','A textured woven, usually printed cotton fabric that was popular in the 30s-40s and 50s as an interiors fabric. The prints were often large vines, leaves and florals.');

-- INSERT INTO credentials (mobileno, client_id, password) VALUES ('1111111111', '3', 'mithun');
-- INSERT INTO credentials (mobileno, client_id, password) VALUES ('1111111112', '3', 'mithun');
--
-- INSERT INTO username_map (username, mobileno) VALUES ('pilot1', '1111111111');
-- INSERT INTO username_map (username, mobileno) VALUES ('pilot2', '1111111112');
--
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app1', 1477333800, 'slot1', 'pilot1');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app2', 1477420200, 'slot1', 'pilot2');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app3', 1477420200, 'slot1', 'pilot1');
-- INSERT INTO appointments (appointment_id, appointment_day, slot_id, username) VALUES ('app4', 1477506600, 'slot1', 'pilot1');

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('101', 'Slim Fit', 'slim_fit' , 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('102', 'Loose Fit', 'loose_fit', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('103', 'Normal Fit', 'normal_fit', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('201', 'Long Sleeve', 'long_sleeve', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('202', 'Roll-Up Sleeve', 'roll_up_sleeve', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('203', 'Short Sleeve', 'short_sleeve', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('301', 'Business Classic', 'business_classic', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('302', 'Business Superior', 'business_superior', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('303', 'Button-Down Classic', 'button_down_classic', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('304', 'Button-Down Modern', 'button_down_modern', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('305', 'Club', 'club', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('306', 'Club Modern', 'club_modern', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('307', 'Cut-Away Classic', 'cut_away_classic', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('308', 'Cut-Away Casual', 'cut_away_casual', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('309', 'Cut-Away Extreme', 'cut_away_extreme', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('310', 'Cut-Away Modern', 'cut_away_modern', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('311', 'Cut-Away Superior', 'cut_away_superior', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('312', 'Cut-Away Two-Button', 'cut_away_twobutton', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('313', 'Turndown Superior', 'turndown_superior', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('314', 'Tab', 'tab', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('315', 'Wing Collar', 'wing_collar', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('316', 'Mao', 'mao', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('317', 'Pin', 'pin', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('401', 'Single Button Rounded', 'single_button_rounded', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('402', 'Single Button Beveled', 'single_button_beveled', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('403', 'Single Button Straight', 'single_button_straight', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('404', 'Convertible Rounded', 'convertible_rounded', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('405', 'Double Button Rounded', 'double_button_rounded', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('406', 'Double Button Beveled', 'double_button_beveled', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('407', 'French Cuff', 'french_cuff', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('408', 'Link Cuff', 'link_cuff', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('409', 'Narrow', 'narrow', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('410', 'Casual Single Button', 'casual_single_button', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('501', 'With Placket', 'with_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('502', 'Without Placket', 'without_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('503', 'Hidden Buttons', 'hidden_buttons', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('504', 'Narrow Placket', 'narrrow_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('505', 'Tuxedo Placket', 'tuxedo_placket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('506', 'White Tie Placket for Studs', 'white_tie_placket_for_studs', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('507', 'White Tie Placket', 'white_tie_placket', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('601', 'No Pocket', 'no_pocket', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('602', 'Left', 'left', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('603', 'Both', 'both', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('701', 'Straight', 'straight', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('702', 'Skewed', 'skewed', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('703', 'V-Shaped', 'v_shaped', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('801', 'No', 'no', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('802', 'Yes', 'yes', 0);

INSERT INTO options (option_key, option_name, option_code, price) VALUES ('901', 'No Back Details', 'no_back_details', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('902', 'Center Folds', 'center_folds', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('903', 'Side Folds', 'side_folds', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('904', 'Back Darts', 'back_darts', 0);


INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1001', 'Classic', 'classic', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1002', 'Modern', 'modern', 0);
INSERT INTO options (option_key, option_name, option_code, price) VALUES ('1003', 'Straight', 'straight', 0);

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('101', 'U Neck', 'Neck Type', 'all', 'blouses/101.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('102', 'V Neck', 'Neck Type', 'all', 'blouses/102.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('103', 'Sweetheart', 'Neck Type', 'all', 'blouses/103.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('104', 'Square Neck', 'Neck Type', 'all', 'blouses/104.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('105', 'Boat Neck', 'Neck Type', 'all', 'blouses/105.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('106', 'Chinese Collar', 'Neck Type', 'all', 'blouses/106.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('107', 'Hi-Neck', 'Neck Type', 'all', 'blouses/107.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('108', 'Halter', 'Neck Type', 'all', 'blouses/108.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('109', 'Spaghetti', 'Neck Type', 'all', 'blouses/109.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('110', 'Sheer Yoke', 'Neck Type', 'all', 'blouses/110.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('111', 'Crop top', 'Neck Type', 'all', 'blouses/111.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('112', 'Racer Back', 'Neck Type', 'all', 'blouses/112.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('113', 'One Shoulder', 'Neck Type', 'all', 'blouses/113.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('114', 'Corset', 'Neck Type', 'all', 'blouses/114.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('115', 'Jacket', 'Neck Type', 'all', 'blouses/115.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('201', 'Classic V', 'Front', 'V Neck', 'blouses/201.jpg', 0, '304,401,402,403,503');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('202', 'Ruched V', 'Front', 'V Neck', 'blouses/202.jpg', 0, '302,303,304,305,401,402,403,502,503');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('203', 'V Collar', 'Front', 'V Neck', 'blouses/203.jpg', 0, '304,401,402,403,502,503,703,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('204', 'V Collar Deep', 'Front', 'V Neck', 'blouses/204.jpg', 0, '301,302,303,305,306,307,401,402,403,404,405,406,407,408,409,503,703,704');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('205', 'Classic U', 'Front', 'U Neck', 'blouses/205.jpg', 0, '401,402,403,503,704');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('206', 'Wide U', 'Front', 'U Neck', 'blouses/206.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('207', 'Closed U', 'Front', 'U Neck', 'blouses/207.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('208', 'Pot Neck', 'Front', 'U Neck', 'blouses/208.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('209', 'Curvy Sweetheart', 'Front', 'Sweetheart', 'blouses/209.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('210', 'Classic Sweetheart', 'Front', 'Sweetheart', 'blouses/210.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('211', 'With Armband', 'Front', 'Sweetheart', 'blouses/211.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('212', 'Two Body', 'Front', 'Sweetheart', 'blouses/212.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('213', 'Classic Square', 'Front', 'V Neck', 'blouses/213.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('214', 'Rounded Square', 'Front', 'V Neck', 'blouses/214.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('215', 'With Armband', 'Front', 'V Neck', 'blouses/215.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('216', 'Classic Boat Neck', 'Front', 'Boat Neck', 'blouses/216.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('217', 'Boat Neck Band Deep', 'Front', 'Boat Neck', 'blouses/217.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('218', 'Boat Neck Band', 'Front', 'Boat Neck', 'blouses/218.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('219', 'Classic Chinese', 'Front', 'Chinese Collar', 'blouses/219.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('220', 'Buttoned Front', 'Front', 'Chinese Collar', 'blouses/220.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('221', 'Slim U', 'Front', 'Chinese Collar', 'blouses/221.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('222', 'Teardrop Deep Sleeve', 'Front', 'Hi-Neck', 'blouses/222.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('223', 'Round Collar', 'Front', 'Hi-Neck', 'blouses/223.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('224', 'Cross Over', 'Front', 'Hi-Neck', 'blouses/224.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('225', 'Teardrop Regular', 'Front', 'Hi-Neck', 'blouses/225.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('226', 'Tie Up', 'Front', 'Halter', 'blouses/226.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('227', 'Classic Halter', 'Front', 'Halter', 'blouses/227.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('228', 'Hi-Neck', 'Front', 'Halter', 'blouses/228.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('229', 'Straight Spaghetti', 'Front', 'Spaghetti', 'blouses/229.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('230', 'Sweetheart Spaghetti', 'Front', 'Spaghetti', 'blouses/230.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('231', 'Straight Bust', 'Front', 'Sheer Yoke', 'blouses/231.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('232', 'V Neck', 'Front', 'Sheer Yoke', 'blouses/232.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('233', 'Collar Band', 'Front', 'Sheer Yoke', 'blouses/233.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('234', 'Sweetheart Bust', 'Front', 'Sheer Yoke', 'blouses/234.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('235', 'Strappy', 'Front', 'Crop Top', 'blouses/235.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('236', 'Crisscross', 'Front', 'Crop Top', 'blouses/236.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('237', 'Peterpant', 'Front', 'Crop Top', 'blouses/237.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('238', 'Boat Neck', 'Front', 'Crop Top', 'blouses/238.jpg', 0, '');


INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('239', 'Sweetheart Neck', 'Front', 'Racer Back', 'blouses/239.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('240', 'Collar Deep Band', 'Front', 'Racer Back', 'blouses/240.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('241', 'One Shoulder', 'Front', 'One Shoulder', 'blouses/241.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('242', 'Panelled Corset', 'Front', 'Corset', 'blouses/242.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('243', 'Jacket with Collar', 'Front', 'Jacket', 'blouses/243.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('244', 'Jacket', 'Front', 'Jacket', 'blouses/244.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('245', 'Jacket with collar Band', 'Front', 'Jacket', 'blouses/245.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('301', 'Classic V', 'Back', 'V Neck', 'blouses/301.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('302', 'Bow Tie', 'Back', 'V Neck', 'blouses/302.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('303', 'V Double Dori', 'Back', 'V Neck', 'blouses/303.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('304', 'V Collar Deep', 'Back', 'V Neck', 'blouses/304.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('305', 'V Collar', 'Back', 'V Neck', 'blouses/305.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('306', 'Hight Back', 'Back', 'V Neck', 'blouses/306.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('307', 'Back Slit', 'Back', 'V Neck', 'blouses/307.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('308', 'Classic U', 'Back', 'U Neck', 'blouses/308.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('309', 'U Double Dori', 'Back', 'U Neck', 'blouses/309.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('310', 'Criss Cross Tie', 'Back', 'U Neck', 'blouses/310.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('311', 'Back Slit', 'Back', 'U Neck', 'blouses/311.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('312', 'Hi Back', 'Back', 'U Neck', 'blouses/312.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('313', 'Single Fabric Hi Back', 'Back', 'U Neck', 'blouses/313.jpg', 0, '');

-- Sweetheart - Back options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('314', 'Double Dori', 'Back', 'Sweetheart', 'blouses/314.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('315', 'Classic Sweetheart', 'Back', 'Sweetheart', 'blouses/314.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('316', 'Pot U', 'Back', 'Sweetheart', 'blouses/315.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('317', 'Armband Sweetheart', 'Back', 'Sweetheart', 'blouses/316.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('318', 'Hi Back', 'Back', 'Sweetheart', 'blouses/318.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('319', 'Back Slit', 'Back', 'Sweetheart', 'blouses/319.jpg', 0, '');

-- Square Neck - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('320', 'Classic Square', 'Back', 'Square Neck', 'blouses/320.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('321', 'Teardrop the Back', 'Back', 'Square Neck', 'blouses/321.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('322', 'Wide Criss Cross Tie', 'Back', 'Square Neck', 'blouses/322.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('323', 'Hi Back', 'Back', 'Square Neck', 'blouses/323.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('324', 'Back Slit', 'Back', 'Square Neck', 'blouses/324.jpg', 0, '');

-- Boat Neck - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('325', 'Classic Boat Neck', 'Back', 'Boat Neck', 'blouses/325.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('326', 'Boat Double Dori', 'Back', 'Boat Neck', 'blouses/326.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('327', 'Boat Neck Band Deep', 'Back', 'Boat Neck', 'blouses/327.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('328', 'Boat Neck Band', 'Back', 'Boat Neck', 'blouses/328.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('329', 'Back Slit', 'Back', 'Boat Neck', 'blouses/329.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('330', 'Round Tie Back', 'Back', 'Boat Neck', 'blouses/330.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('331', 'Rounded Triangle', 'Back', 'Boat Neck', 'blouses/331.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('332', 'Rounded V', 'Back', 'Boat Neck', 'blouses/332.jpg', 0, '');

-- Chinese Collar Neck - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('333', 'Bottom Tie', 'Back', 'Chinese Collar', 'blouses/333.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('334', 'Trapezoid', 'Back', 'Chinese Collar', 'blouses/334.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('335', 'Hi Back', 'Back', 'Chinese Collar', 'blouses/335.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('336', 'Back Slit', 'Back', 'Chinese Collar', 'blouses/336.jpg', 0, '');

-- Hi Neck - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('337', 'Teardrop Regular', 'Back', 'Hi Neck', 'blouses/337.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('338', 'Teardrop Deep Sleeve', 'Back', 'Hi Neck', 'blouses/338.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('339', 'Double Dori', 'Back', 'Hi Neck', 'blouses/339.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('340', 'Hi Back', 'Back', 'Hi Neck', 'blouses/340.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('341', 'Back Slit', 'Back', 'Hi Neck', 'blouses/341.jpg', 0, '');

-- Halter - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('342', 'Tie Up', 'Back', 'Halter', 'blouses/342.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('343', 'Buttoned Up', 'Back', 'Halter', 'blouses/343.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('344', 'Tie Down', 'Back', 'Halter', 'blouses/344.jpg', 0, '');

-- Spaghetti - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('345', 'Crisscross Tie', 'Back', 'Spaghetti', 'blouses/345.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('346', 'Classic Spaghetti', 'Back', 'Spaghetti', 'blouses/346.jpg', 0, '');

-- Sheer Yoke - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('347', 'Small Teardrop', 'Back', 'Sheer Yoke', 'blouses/347.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('348', 'V Back', 'Back', 'Sheer Yoke', 'blouses/348.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('349', 'Pentagon', 'Back', 'Sheer Yoke', 'blouses/349.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('350', 'Inverted Tear', 'Back', 'Sheer Yoke', 'blouses/350.jpg', 0, '');

-- Sheer Yoke - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('351', 'Strappy', 'Back', 'Crop Top', 'blouses/351.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('352', 'Hi Back', 'Back', 'Crop Top', 'blouses/352.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('353', 'Boat Neck', 'Back', 'Crop Top', 'blouses/353.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('354', 'Peterpan', 'Back', 'Crop Top', 'blouses/354.jpg', 0, '');

-- Racer Back - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('355', 'X-Racer Back', 'Back', 'Racer Back', 'blouses/355.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('356', 'Classic Racer Back', 'Back', 'Racer Back', 'blouses/356.jpg', 0, '');

-- One Shoulder - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('357', 'Classic Back', 'Back', 'One Shoulder', 'blouses/357.jpg', 0, '');

-- Corset - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('358', 'Panelled Corset Back', 'Back', 'Corset', 'blouses/358.jpg', 0, '');

-- Jacket - Back Options
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('359', 'Jacket with Collar', 'Back', 'Jacket', 'blouses/359.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('360', 'Jacket', 'Back', 'Jacket', 'blouses/360.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('361', 'Jacket with collar Band', 'Back', 'Jacket', 'blouses/361.jpg', 0, '');

-- Sleeves
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('401', 'Noodle Strap', 'Sleeves', 'all', 'blouses/401.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('402', 'Wide Strap', 'Sleeves', 'all', 'blouses/402.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('403', 'Fan Strap', 'Sleeves', 'all', 'blouses/403.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('404', 'Sleeveless', 'Sleeves', 'all', 'blouses/404.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('405', 'Cap', 'Sleeves', 'all', 'blouses/405.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('406', 'Short', 'Sleeves', 'all', 'blouses/406.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('407', 'Elbow', 'Sleeves', 'all', 'blouses/407.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('408', 'Three Fourth', 'Sleeves', 'all', 'blouses/408.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('409', 'Full', 'Sleeves', 'all', 'blouses/409.jpg', 0, '');

-- Blouse Length
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('501', 'Regular', 'Blouse Length', 'all', 'blouses/501.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('502', 'Long', 'Blouse Length', 'all', 'blouses/502.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('503', 'Extra Long', 'Blouse Length', 'all', 'blouses/503.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('601', 'Front', 'Opening', 'all', 'blouses/601.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('602', 'Back', 'Opening', 'all', 'blouses/602.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('603', 'Side', 'Opening', 'all', 'blouses/603.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('701', 'Princess', 'Cut', 'all', 'blouses/701.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('702', 'Three Dart', 'Cut', 'all', 'blouses/702.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('703', 'With Band', 'Cut', 'all', 'blouses/703.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('704', 'Bustier', 'Cut', 'all', 'blouses/704.jpg', 0, '201');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('705', 'Single Dart', 'Cut', 'all', 'blouses/705.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('801', 'Yes', 'Border', 'add-on', 'blouses/801.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('802', 'No', 'Border', 'add-on', 'blouses/802.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('803', 'Body', 'Border Placement', 'add-on', 'blouses/803.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('804', 'Sleeve', 'Border Placement', 'add-on', 'blouses/804.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('805', 'Collar', 'Border Placement', 'add-on', 'blouses/805.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('806', 'Kundan', 'Border Types', 'add-on', 'blouses/806.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('807', 'Gold', 'Border Types', 'add-on', 'blouses/807.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('808', 'Copper', 'Border Types', 'add-on', 'blouses/808.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('809', 'Silver', 'Border Types', 'add-on', 'blouses/809.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('810', 'Pearl', 'Border Types', 'add-on', 'blouses/810.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('811', 'Crystal Prl', 'Border Types', 'add-on', 'blouses/811.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('812', 'Sequin Blk', 'Border Types', 'add-on', 'blouses/812.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('813', 'Sequin Gld', 'Border Types', 'add-on', 'blouses/813.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('814', 'Sequin Slv', 'Border Types', 'add-on', 'blouses/814.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('901', 'No', 'Piping', 'add-on', 'blouses/901.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('902', 'Yes', 'Piping', 'add-on', 'blouses/901.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('903', 'Fushcia Pink', 'Piping Color', 'add-on', 'blouses/903.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('904', 'Rose Pink', 'Piping Color', 'add-on', 'blouses/904.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('905', 'Pale Pink', 'Piping Color', 'add-on', 'blouses/905.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('906', 'Ruched', 'Piping Color', 'add-on', 'blouses/906.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('907', 'Maroon', 'Piping Color', 'add-on', 'blouses/907.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('908', 'Orange', 'Piping Color', 'add-on', 'blouses/908.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('909', 'Yellow', 'Piping Color', 'add-on', 'blouses/909.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('910', 'Mustard', 'Piping Color', 'add-on', 'blouses/910.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('911', 'Leaf Green', 'Piping Color', 'add-on', 'blouses/911.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('912', 'Emerald Green', 'Piping Color', 'add-on', 'blouses/912.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('913', 'Sea Green', 'Piping Color', 'add-on', 'blouses/913.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('914', 'Parrot Green', 'Piping Color', 'add-on', 'blouses/914.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('915', 'Midnight Blue', 'Piping Color', 'add-on', 'blouses/915.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('916', 'Navy Blue', 'Piping Color', 'add-on', 'blouses/916.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('917', 'Sky Blue', 'Piping Color', 'add-on', 'blouses/917.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('918', 'Turquiose', 'Piping Color', 'add-on', 'blouses/918.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('919', 'Purple', 'Piping Color', 'add-on', 'blouses/919.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('920', 'Lavender', 'Piping Color', 'add-on', 'blouses/920.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('921', 'Black', 'Piping Color', 'add-on', 'blouses/921.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('922', 'Brown', 'Piping Color', 'add-on', 'blouses/922.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('923', 'Beige', 'Piping Color', 'add-on', 'blouses/923.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('924', 'White', 'Piping Color', 'add-on', 'blouses/924.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('925', 'Cream', 'Piping Color', 'add-on', 'blouses/925.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('926', 'Gold', 'Piping Color', 'add-on', 'blouses/926.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('927', 'Silver', 'Piping Color', 'add-on', 'blouses/927.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('1001', 'None', 'Dori', 'add-on', 'blouses/1001.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('1002', 'Dori without Tassles', 'Dori', 'add-on', 'blouses/1002.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('1003', 'Dori with Tassles', 'Dori', 'add-on', 'blouses/1003.jpg', 0, '');

INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('1101', 'No', 'Blouse Pads', 'add-on', 'blouses/1101.jpg', 0, '');
INSERT INTO blouse (option_key, option_name, option_category, option_type, img, price, disable_list)  VALUES ('1102', 'Yes', 'Blouse Pads', 'add-on', 'blouses/1102.jpg', 0, '');
