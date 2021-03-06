#!/usr/bin/env ruby
=begin
  Copyright (c) 2014-2015 Malte Mader <malte.mader@thuenen.de>
  Copyright (c) 2014-2015 Thünen Institute of Forest Genetics

  Permission to use, copy, modify, and distribute this software for any
  purpose with or without fee is hereby granted, provided that the above
  copyright notice and this permission notice appear in all copies.
  
  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
=end

require 'spec_helper'

  describe Variant do
  	it "prints out its SNP contents" do
  	  variant = Variant.new("case1",
                 "5",
                 "SNV",
                 1,
                 "A",
                 "G",
                 "Homozygous",
                 37.5,
                 :SNP)

  	  expect(variant.to_s).to eql("case1\t5\tSNV\t1\tA\tG\t37.5")
  	end

  	it "prints out its INDEL contents" do
  	  variant = Variant.new("case2",
                 "10",
                 "Deletion",
                 6,
                 "TGGCGA",
                 "-",
                 "Homozygous",
                 30,
                 :INDEL)

  	  expect(variant.to_s).to eql("case2\t10\tDeletion\t6\tTGGCGA\t-\t30")
  	end
  end