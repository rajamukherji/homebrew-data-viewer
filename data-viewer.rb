class DataViewer < Formula
	desc "General purpose imperative build system"
	homepage "https://github.com/rajamukherji/dataviewer"
	url "https://github.com/rajamukherji/dataviewer.git", :tag => "v1.0.0"
	depends_on wrapl/rabs/rabs => :build
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
