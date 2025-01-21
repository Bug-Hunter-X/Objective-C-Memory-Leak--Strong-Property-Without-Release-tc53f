# Objective-C Memory Leak Example

This repository demonstrates a common, subtle memory leak in Objective-C related to improper management of strong properties. The issue occurs when a strong property is assigned a new object but there's no mechanism to release it, resulting in a memory leak. The solution showcases how to resolve this.