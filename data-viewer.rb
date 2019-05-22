class DataViewer < Formula
	desc "Viewer for images and associated data"
	homepage "https://github.com/rajamukherji/data-viewer"
	url "https://github.com/rajamukherji/data-viewer.git", :tag => "v1.0.6"
	depends_on "wrapl/rabs/rabs" => :build
	depends_on "pkg-config" => :build
	depends_on "bdw-gc"
	depends_on "gtk+3"
	depends_on "gtksourceview4"

	def install
		system "rabs", "install", "-DPREFIX=#{prefix}"
	end

	test do
		system "#{bin}/data-viewer", "-v"
	end
end
