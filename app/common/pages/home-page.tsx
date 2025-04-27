import React from 'react';
import { Button } from "../components/ui/button";
import {
    NavigationMenu,
    NavigationMenuContent,
    NavigationMenuItem,
    NavigationMenuLink,
    NavigationMenuList,
    NavigationMenuTrigger,
} from "../components/ui/navigation-menu";
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from "../components/ui/dropdown-menu";
import { Separator } from "../components/ui/separator";

const HomePage: React.FC = () => {
    return (
        <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100">
            <header className="container mx-auto px-4 py-4">
                <NavigationMenu>
                    <NavigationMenuList>
                        <NavigationMenuItem>
                            <NavigationMenuTrigger>Products</NavigationMenuTrigger>
                            <NavigationMenuContent>
                                <ul className="grid gap-3 p-4 md:w-[400px] lg:w-[500px] lg:grid-cols-2">
                                    <li className="row-span-3">
                                        <NavigationMenuLink asChild>
                                            <a
                                                className="flex h-full w-full select-none flex-col justify-end rounded-md bg-gradient-to-b from-muted/50 to-muted p-6 no-underline outline-none focus:shadow-md"
                                                href="/"
                                            >
                                                <div className="mb-2 mt-4 text-lg font-medium">
                                                    shadcn/ui
                                                </div>
                                                <p className="text-sm leading-tight text-muted-foreground">
                                                    Beautifully designed components built with Radix UI and Tailwind CSS.
                                                </p>
                                            </a>
                                        </NavigationMenuLink>
                                    </li>
                                    <li>
                                        <NavigationMenuLink asChild>
                                            <a
                                                className="block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground"
                                                href="/docs"
                                            >
                                                <div className="text-sm font-medium leading-none">Documentation</div>
                                                <p className="line-clamp-2 text-sm leading-snug text-muted-foreground">
                                                    Learn how to use our components
                                                </p>
                                            </a>
                                        </NavigationMenuLink>
                                    </li>
                                </ul>
                            </NavigationMenuContent>
                        </NavigationMenuItem>
                        <NavigationMenuItem>
                            <DropdownMenu>
                                <DropdownMenuTrigger asChild>
                                    <Button variant="ghost">Account</Button>
                                </DropdownMenuTrigger>
                                <DropdownMenuContent className="w-56">
                                    <DropdownMenuLabel>My Account</DropdownMenuLabel>
                                    <DropdownMenuSeparator />
                                    <DropdownMenuItem>Profile</DropdownMenuItem>
                                    <DropdownMenuItem>Settings</DropdownMenuItem>
                                    <DropdownMenuItem>Logout</DropdownMenuItem>
                                </DropdownMenuContent>
                            </DropdownMenu>
                        </NavigationMenuItem>
                    </NavigationMenuList>
                </NavigationMenu>
            </header>

            <Separator className="my-4" />

            <main className="container mx-auto px-4 py-16">
                <div className="text-center">
                    <h1 className="text-4xl font-bold text-gray-900 mb-4">
                        Welcome to Our Platform
                    </h1>
                    <p className="text-xl text-gray-600 mb-8">
                        Discover amazing features and start your journey with us
                    </p>
                    <div className="space-x-4">
                        <Button size="lg">Get Started</Button>
                        <Button variant="outline" size="lg">Learn More</Button>
                    </div>
                </div>
            </main>
        </div>
    );
};

export default HomePage; 