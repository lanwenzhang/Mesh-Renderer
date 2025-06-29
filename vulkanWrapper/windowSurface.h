#pragma once

#include "../base.h"
#include "instance.h"
#include "window.h"

namespace FF::Wrapper {

	class WindowSurface {
	public:

		WindowSurface(Instance::Ptr instance, Window::Ptr window);
		~WindowSurface();

		using Ptr = std::shared_ptr<WindowSurface>;
		static Ptr create(Instance::Ptr instance, Window::Ptr window) { return std::make_shared<WindowSurface>(instance, window); }

		[[nodiscard]] auto getSurface() const { return mSurface; }

	private:

		VkSurfaceKHR mSurface{ VK_NULL_HANDLE };
		Instance::Ptr mInstance{ nullptr };

	};

}