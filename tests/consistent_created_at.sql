SELECT * from  {{ ref('dim_listings_cleansed') }} a
inner join {{ ref('fct_reviews') }} b
on a.listing_id = b.listing_id
where a.created_at >= b.review_date