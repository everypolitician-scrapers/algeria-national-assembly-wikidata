#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new( "Category:Members of the People's National Assembly", "en").member_titles
fr = WikiData::Category.new( "Catégorie:Député algérien", "fr").member_titles
ar = WikiData::Category.new( "تصنيف:سياسيات جزائريات", "ar").member_titles
de = WikiData::Category.new( "Kategorie:Mitglied der Nationalen Volksversammlung (Algerien)", "de").member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, fr: fr, ar: ar, de: de })
