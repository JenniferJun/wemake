-- Seed Categories
INSERT INTO categories (name, description) VALUES
('AI & Machine Learning', 'Products and services related to artificial intelligence and machine learning'),
('Developer Tools', 'Tools and platforms for software developers'),
('Productivity', 'Applications and tools to improve productivity'),
('Social Media', 'Social networking and communication platforms'),
('E-commerce', 'Online shopping and retail solutions');

-- Seed Products
INSERT INTO products (name, tagline, description, how_it_works, icon, url, profile_id, category_id) VALUES
('CodeGPT', 'AI-powered code completion', 'An AI assistant that helps developers write better code', 'Uses machine learning to understand your coding style', 'code-icon.png', 'https://codegpt.com', '1499a939-4edc-4ee7-9f79-0af6b483db67', 1),
('DevFlow', 'Streamline your development workflow', 'A comprehensive development environment', 'Integrates with your existing tools', 'dev-icon.png', 'https://devflow.io', '1499a939-4edc-4ee7-9f79-0af6b483db67', 2),
('TaskMaster', 'Boost your productivity', 'Task management made simple', 'Organize and track your tasks', 'task-icon.png', 'https://taskmaster.com', '1499a939-4edc-4ee7-9f79-0af6b483db67', 3),
('SocialHub', 'Connect with developers', 'A social platform for developers', 'Share and discover tech content', 'social-icon.png', 'https://socialhub.dev', '1499a939-4edc-4ee7-9f79-0af6b483db67', 4),
('TechStore', 'Developer marketplace', 'Buy and sell developer tools', 'Browse and purchase tech products', 'store-icon.png', 'https://techstore.dev', '1499a939-4edc-4ee7-9f79-0af6b483db67', 5);

-- Seed Reviews
INSERT INTO reviews (product_id, profile_id, rating, review) VALUES
(1, '1499a939-4edc-4ee7-9f79-0af6b483db67', 5, 'Amazing tool that saves me hours of coding'),
(2, '1499a939-4edc-4ee7-9f79-0af6b483db67', 4, 'Great workflow integration'),
(3, '1499a939-4edc-4ee7-9f79-0af6b483db67', 5, 'Simple yet powerful task management'),
(4, '1499a939-4edc-4ee7-9f79-0af6b483db67', 4, 'Perfect for developer networking'),
(5, '1499a939-4edc-4ee7-9f79-0af6b483db67', 5, 'Essential marketplace for developers');

-- Seed Jobs
INSERT INTO jobs (position, overview, responsibilities, qualifications, benefits, skills, company_name, company_logo, company_location, apply_url, job_type, location, salary_range) VALUES
('Senior Frontend Developer', 'Lead frontend development', 'Build and maintain web applications', '5+ years experience', 'Health insurance, remote work', 'React, TypeScript', 'TechCorp', 'techcorp.png', 'San Francisco', 'https://techcorp.com/jobs', 'full-time', 'remote', '$120,000 - $150,000'),
('UI/UX Designer', 'Design user interfaces', 'Create beautiful user experiences', '3+ years experience', 'Flexible hours', 'Figma, Adobe XD', 'DesignHub', 'designhub.png', 'New York', 'https://designhub.com/jobs', 'full-time', 'hybrid', '$100,000 - $120,000'),
('Backend Developer', 'Build scalable APIs', 'Develop backend services', '4+ years experience', 'Stock options', 'Node.js, Python', 'APICorp', 'apicorp.png', 'Austin', 'https://apicorp.com/jobs', 'full-time', 'in-person', '$150,000 - $250,000'),
('Product Manager', 'Lead product development', 'Define product strategy', '5+ years experience', 'Remote work', 'Agile, Scrum', 'ProductCo', 'productco.png', 'Seattle', 'https://productco.com/jobs', 'full-time', 'hybrid', '$120,000 - $150,000'),
('DevOps Engineer', 'Manage infrastructure', 'Maintain cloud services', '3+ years experience', 'Health benefits', 'AWS, Docker', 'CloudTech', 'cloudtech.png', 'Boston', 'https://cloudtech.com/jobs', 'full-time', 'remote', '$150,000 - $250,000');

-- Seed Team
INSERT INTO teams (product_name, team_size, equity_split, product_stage, roles, product_description, team_leader_id) VALUES
('CodeGPT', 5, 20, 'product', '2 developers, 2 designers, 1 PM', 'AI-powered code completion tool', '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('DevFlow', 3, 33, 'mvp', '2 developers, 1 designer', 'Development workflow platform', '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('TaskMaster', 4, 25, 'product', '2 developers, 1 designer, 1 PM', 'Task management application', '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('SocialHub', 6, 16, 'mvp', '3 developers, 2 designers, 1 PM', 'Social platform for developers', '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('TechStore', 5, 20, 'product', '2 developers, 2 designers, 1 PM', 'Developer marketplace', '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed GPT Ideas
INSERT INTO gpt_ideas (idea, views, claimed_by) VALUES
('AI-powered code review assistant', 100, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Developer social network', 150, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Code snippet marketplace', 200, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Automated testing platform', 120, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Developer portfolio builder', 180, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed Message Rooms
-- INSERT INTO message_rooms DEFAULT VALUES;
-- INSERT INTO message_room_members (message_room_id, profile_id) VALUES
-- (1, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- -- Seed Messages
-- INSERT INTO messages (message_room_id, sender_id, content) VALUES
-- (1, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Hello! How can I help you?');

-- -- Seed Notifications
-- INSERT INTO notifications (source_id, target_id, type) VALUES
-- ('1499a939-4edc-4ee7-9f79-0af6b483db67', '1499a939-4edc-4ee7-9f79-0af6b483db67', 'follow');

-- Seed Product Upvotes (bridge table)
INSERT INTO product_upvotes (product_id, profile_id) VALUES
(1, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed GPT Ideas Likes (bridge table)
INSERT INTO gpt_ideas_likes (gpt_idea_id, profile_id) VALUES
(1, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed Follows (bridge table)
INSERT INTO follows (follower_id, following_id) VALUES
('1499a939-4edc-4ee7-9f79-0af6b483db67', '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed Topics
INSERT INTO topics (name, slug) VALUES
('Development', 'development'),
('Design', 'design'),
('Product Management', 'product-management'),
('Career', 'career'),
('Technology', 'technology');

-- Seed Posts
INSERT INTO posts (title, content, topic_id, profile_id) VALUES
('Getting Started with TypeScript', 'A comprehensive guide to TypeScript basics and best practices...', 1, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('UI Design Principles', 'Essential principles for creating beautiful user interfaces...', 2, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Product Roadmap Planning', 'How to create and maintain an effective product roadmap...', 3, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('Career Growth in Tech', 'Strategies for advancing your career in technology...', 4, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
('AI in Modern Development', 'Exploring the impact of AI on software development...', 5, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed Post Upvotes (bridge table)
INSERT INTO post_upvotes (post_id, profile_id) VALUES
(1, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
(2, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
(3, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
(4, '1499a939-4edc-4ee7-9f79-0af6b483db67'),
(5, '1499a939-4edc-4ee7-9f79-0af6b483db67');

-- Seed Post Replies
INSERT INTO post_replies (post_id, profile_id, reply) VALUES
(1, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Great introduction to TypeScript!'),
(2, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'These design principles are spot on.'),
(3, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Very helpful for planning my product roadmap.'),
(4, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Excellent career advice!'),
(5, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'AI is definitely changing how we develop software.');

-- Add some nested replies
INSERT INTO post_replies (post_id, parent_id, profile_id, reply) VALUES
(1, 1, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Thanks for the feedback!'),
(2, 2, '1499a939-4edc-4ee7-9f79-0af6b483db67', 'Glad you found it useful!');