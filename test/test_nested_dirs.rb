
# -*- coding: utf-8 -*-
require_relative 'helper'

class TestNestedDirs < Test::Unit::TestCase
  def setup
    @parser = EPUB::Parser.new('test/fixtures/nested_dirs.epub')
  end

  def test_navigation_item
    book = @parser.parse

    assert_equal 'nested/dir/text/2_chapter-1.xhtml', book.nav.content_document.navigation.items.first.item.full_path.path
  end
end
