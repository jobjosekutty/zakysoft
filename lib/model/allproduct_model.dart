// // To parse this JSON data, do
// //
// //     final allProduct = allProductFromJson(jsonString);

// import 'dart:convert';

// List<AllProduct> allProductFromJson(String str) => List<AllProduct>.from(json.decode(str).map((x) => AllProduct.fromJson(x)));

// String allProductToJson(List<AllProduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class AllProduct {
//     AllProduct({
//         this.name,
//         this.id,
//         this.nameArabic,
//         this.categoryId,
//         this.brandId,
//         this.rating,
//         this.isInWishListCount,
//         this.ratingsCount,
//         this.sortPrice,
//         this.category,
//         this.offers,
//         this.cartSummaries,
//         this.price,
//         this.inventory,
//         this.images,
//         this.tags,
//         this.storage,
//     });

//     String name;
//     int id;
//     String nameArabic;
//     int categoryId;
//     dynamic brandId;
//     String rating;
//     int isInWishListCount;
//     int ratingsCount;
//     double sortPrice;
//     Category category;
//     Offers offers;
//     CartSummaries cartSummaries;
//     Price price;
//     Inventory inventory;
//     List<Image> images;
//     List<TagElement> tags;
//     Storage storage;

//     factory AllProduct.fromJson(Map<String, dynamic> json) => AllProduct(
//         name: json["name"],
//         id: json["id"],
//         nameArabic: json["name_arabic"],
//         categoryId: json["category_id"],
//         brandId: json["brand_id"],
//         rating: json["rating"],
//         isInWishListCount: json["is_in_wish_list_count"],
//         ratingsCount: json["ratings_count"],
//         sortPrice: json["sort_price"].toDouble(),
//         category: Category.fromJson(json["category"]),
//         offers: json["offers"] == null ? null : Offers.fromJson(json["offers"]),
//         cartSummaries: CartSummaries.fromJson(json["cart_summaries"]),
//         price: Price.fromJson(json["price"]),
//         inventory: Inventory.fromJson(json["inventory"]),
//         images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
//         tags: List<TagElement>.from(json["tags"].map((x) => TagElement.fromJson(x))),
//         storage: Storage.fromJson(json["storage"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "name": name,
//         "id": id,
//         "name_arabic": nameArabic,
//         "category_id": categoryId,
//         "brand_id": brandId,
//         "rating": rating,
//         "is_in_wish_list_count": isInWishListCount,
//         "ratings_count": ratingsCount,
//         "sort_price": sortPrice,
//         "category": category.toJson(),
//         "offers": offers == null ? null : offers.toJson(),
//         "cart_summaries": cartSummaries.toJson(),
//         "price": price.toJson(),
//         "inventory": inventory.toJson(),
//         "images": List<dynamic>.from(images.map((x) => x.toJson())),
//         "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
//         "storage": storage.toJson(),
//     };
// }

// class CartSummaries {
//     CartSummaries({
//         this.itemId,
//         this.quantity,
//     });

//     int itemId;
//     int quantity;

//     factory CartSummaries.fromJson(Map<String, dynamic> json) => CartSummaries(
//         itemId: json["item_id"],
//         quantity: json["quantity"],
//     );

//     Map<String, dynamic> toJson() => {
//         "item_id": itemId,
//         "quantity": quantity,
//     };
// }

// class Category {
//     Category({
//         this.id,
//         this.parentId,
//         this.offers,
//     });

//     int id;
//     int parentId;
//     dynamic offers;

//     factory Category.fromJson(Map<String, dynamic> json) => Category(
//         id: json["id"],
//         parentId: json["parent_id"],
//         offers: json["offers"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "parent_id": parentId,
//         "offers": offers,
//     };
// }

// class Image {
//     Image({
//         this.productId,
//         this.imageUrl,
//         this.isDefault,
//     });

//     int productId;
//     String imageUrl;
//     int isDefault;

//     factory Image.fromJson(Map<String, dynamic> json) => Image(
//         productId: json["product_id"],
//         imageUrl: json["image_url"],
//         isDefault: json["IS_default"],
//     );

//     Map<String, dynamic> toJson() => {
//         "product_id": productId,
//         "image_url": imageUrl,
//         "IS_default": isDefault,
//     };
// }

// class Inventory {
//     Inventory({
//         this.id,
//         this.productId,
//         this.criticalPoint,
//         this.isSalableNstocks,
//     });

//     int id;
//     int productId;
//     int criticalPoint;
//     int isSalableNstocks;

//     factory Inventory.fromJson(Map<String, dynamic> json) => Inventory(
//         id: json["id"],
//         productId: json["product_id"],
//         criticalPoint: json["critical_point"],
//         isSalableNstocks: json["Is_salable_nstocks"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "critical_point": criticalPoint,
//         "Is_salable_nstocks": isSalableNstocks,
//     };
// }

// class Offers {
//     Offers({
//         this.productId,
//         this.discount,
//         this.retailprice,
//         this.pricebookId,
//         this.maxUnit,
//         this.discountType,
//         this.priceBook,
//     });

//     int productId;
//     int discount;
//     int retailprice;
//     int pricebookId;
//     int maxUnit;
//     String discountType;
//     PriceBook priceBook;

//     factory Offers.fromJson(Map<String, dynamic> json) => Offers(
//         productId: json["product_id"],
//         discount: json["discount"],
//         retailprice: json["retailprice"],
//         pricebookId: json["pricebook_id"],
//         maxUnit: json["max_unit"],
//         discountType: json["discount_type"],
//         priceBook: PriceBook.fromJson(json["price_book"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "product_id": productId,
//         "discount": discount,
//         "retailprice": retailprice,
//         "pricebook_id": pricebookId,
//         "max_unit": maxUnit,
//         "discount_type": discountType,
//         "price_book": priceBook.toJson(),
//     };
// }

// class PriceBook {
//     PriceBook({
//         this.id,
//         this.name,
//         this.nameArabic,
//         this.description,
//         this.descriptionArabic,
//         this.isActive,
//         this.validFrom,
//         this.validTo,
//         this.file,
//         this.imageArabic,
//         this.isAvailableOfflineCustomer,
//         this.discountType,
//         this.type,
//         this.createdBy,
//         this.updatedBy,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//     });

//     int id;
//     String name;
//     String nameArabic;
//     dynamic description;
//     dynamic descriptionArabic;
//     int isActive;
//     DateTime validFrom;
//     DateTime validTo;
//     String file;
//     String imageArabic;
//     int isAvailableOfflineCustomer;
//     String discountType;
//     String type;
//     int createdBy;
//     int updatedBy;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic deletedAt;

//     factory PriceBook.fromJson(Map<String, dynamic> json) => PriceBook(
//         id: json["id"],
//         name: json["name"],
//         nameArabic: json["name_arabic"],
//         description: json["description"],
//         descriptionArabic: json["description_arabic"],
//         isActive: json["IS_active"],
//         validFrom: DateTime.parse(json["valid_from"]),
//         validTo: DateTime.parse(json["valid_to"]),
//         file: json["file"],
//         imageArabic: json["image_arabic"],
//         isAvailableOfflineCustomer: json["IS_available_offline_customer"],
//         discountType: json["discount_type"],
//         type: json["type"],
//         createdBy: json["created_by"],
//         updatedBy: json["updated_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "name_arabic": nameArabic,
//         "description": description,
//         "description_arabic": descriptionArabic,
//         "IS_active": isActive,
//         "valid_from": validFrom.toIso8601String(),
//         "valid_to": validTo.toIso8601String(),
//         "file": file,
//         "image_arabic": imageArabic,
//         "IS_available_offline_customer": isAvailableOfflineCustomer,
//         "discount_type": discountType,
//         "type": type,
//         "created_by": createdBy,
//         "updated_by": updatedBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//     };
// }

// class Price {
//     Price({
//         this.id,
//         this.productId,
//         this.salePrice,
//         this.taxId,
//         this.tax,
//     });

//     int id;
//     int productId;
//     double salePrice;
//     int taxId;
//     Tax tax;

//     factory Price.fromJson(Map<String, dynamic> json) => Price(
//         id: json["id"],
//         productId: json["product_id"],
//         salePrice: json["sale_price"].toDouble(),
//         taxId: json["tax_id"],
//         tax: Tax.fromJson(json["tax"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "sale_price": salePrice,
//         "tax_id": taxId,
//         "tax": tax.toJson(),
//     };
// }

// class Tax {
//     Tax({
//         this.id,
//         this.name,
//         this.nameArabic,
//         this.rate,
//         this.isPriceInclude,
//     });

//     int id;
//     Name name;
//     Name nameArabic;
//     int rate;
//     int isPriceInclude;

//     factory Tax.fromJson(Map<String, dynamic> json) => Tax(
//         id: json["id"],
//         name: nameValues.map[json["name"]],
//         nameArabic: nameValues.map[json["name_arabic"]],
//         rate: json["rate"],
//         isPriceInclude: json["IS_price_include"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": nameValues.reverse[name],
//         "name_arabic": nameValues.reverse[nameArabic],
//         "rate": rate,
//         "IS_price_include": isPriceInclude,
//     };
// }

// enum Name { VAT_15_PRICE_INCLUDED }

// final nameValues = EnumValues({
//     " VAT 15 Price included": Name.VAT_15_PRICE_INCLUDED
// });

// class Storage {
//     Storage({
//         this.id,
//         this.productId,
//         this.quantityOnhand,
//         this.quantityReserved,
//     });

//     int id;
//     int productId;
//     int quantityOnhand;
//     int quantityReserved;

//     factory Storage.fromJson(Map<String, dynamic> json) => Storage(
//         id: json["id"],
//         productId: json["product_id"],
//         quantityOnhand: json["quantity_onhand"],
//         quantityReserved: json["quantity_reserved"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "quantity_onhand": quantityOnhand,
//         "quantity_reserved": quantityReserved,
//     };
// }

// class TagElement {
//     TagElement({
//         this.id,
//         this.productId,
//         this.tagId,
//         this.tag,
//     });

//     int id;
//     int productId;
//     int tagId;
//     TagTag tag;

//     factory TagElement.fromJson(Map<String, dynamic> json) => TagElement(
//         id: json["id"],
//         productId: json["product_id"],
//         tagId: json["tag_id"],
//         tag: TagTag.fromJson(json["tag"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "tag_id": tagId,
//         "tag": tag.toJson(),
//     };
// }

// class TagTag {
//     TagTag({
//         this.id,
//         this.name,
//         this.nameArabic,
//         this.isActive,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//     });

//     int id;
//     String name;
//     String nameArabic;
//     int isActive;
//     DateTime createdAt;
//     DateTime updatedAt;
//     dynamic deletedAt;

//     factory TagTag.fromJson(Map<String, dynamic> json) => TagTag(
//         id: json["id"],
//         name: json["name"],
//         nameArabic: json["name_arabic"],
//         isActive: json["IS_active"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "name_arabic": nameArabic,
//         "IS_active": isActive,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
