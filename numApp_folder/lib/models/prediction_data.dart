// prediction_data.dart

class PredictionData {
  static String getRootPersonalityTraits(int number) {
    final Map<int, String> traits = {
      1: "You are a natural born leader with pioneering spirit and strong determination. Independent, creative, and original in your approach. You have the courage to take initiatives and lead others. You're ambitious and self-reliant with strong willpower.",
      2: "You are diplomatic, cooperative, and highly intuitive. Your greatest strength lies in your ability to find balance and harmony. You're sensitive to others' needs and make an excellent mediator. Natural peacemaker with patience and understanding.",
      3: "You possess exceptional creative and communicative abilities. Charming, expressive, and socially adept. You have natural artistic talents and can inspire others. Optimistic outlook with a gift for bringing joy to others' lives.",
      4: "You are practical, methodical, and highly organized. Strong work ethic with attention to detail. You build solid foundations and value stability. Trustworthy and reliable, you excel at creating systems and managing resources.",
      5: "You are adventurous, versatile, and progressive. Freedom-loving with a constant desire for new experiences. Quick learner who adapts easily to change. Magnetic personality with strong persuasive abilities.",
      6: "You are nurturing, responsible, and harmony-seeking. Natural caretaker with strong sense of justice. You have deep understanding of love and relationships. Artistic with an appreciation for beauty and comfort.",
      7: "You possess deep analytical abilities and spiritual awareness. Perfectionist with excellent research skills. You seek wisdom and understanding of life's mysteries. Strong intuition with philosophical nature.",
      8: "You have excellent business sense and executive abilities. Natural leader in material affairs. Strong judgment in financial matters. Ambitious with the ability to achieve great success.",
      9: "You are humanitarian, compassionate, and universally loving. Creative with artistic talents. You have a broad understanding of human nature. Natural healer with strong spiritual awareness.",
    };
    return traits[number] ?? "Invalid number";
  }

  static String getRootLifePath(int number) {
    final Map<int, String> paths = {
      1: "Your life path is about developing independence and leadership. You're here to forge new paths and inspire others through your innovative ideas. Focus on building self-confidence and learning to stand alone when necessary.",
      2: "Your life path involves mastering cooperation and diplomacy. You're meant to bring people together and facilitate peace. Your journey involves learning patience and developing your natural sensitivity constructively.",
      3: "Your path is about creative self-expression and bringing joy to the world. You're here to inspire others through your creativity and communication. Focus on developing discipline to channel your creative energy effectively.",
      4: "Your life path is about building stable foundations and creating order from chaos. You're here to teach others the value of hard work and persistence. Focus on finding balance between work and personal life.",
      5: "Your path involves embracing change and personal freedom. You're here to experience life fully and help others adapt to change. Focus on using your freedom constructively while maintaining commitments.",
      6: "Your life path centers on responsibility and nurturing others. You're here to create harmony and beauty in the world. Focus on balancing giving to others with self-care.",
      7: "Your path involves seeking wisdom and spiritual understanding. You're here to develop your analytical mind and intuitive abilities. Focus on sharing your insights while maintaining practical grounding.",
      8: "Your life path is about mastering the material world and personal power. You're here to achieve success and empower others. Focus on balancing material and spiritual aspects of life.",
      9: "Your path is about selfless service and universal love. You're here to make a broader impact on humanity. Focus on letting go of personal attachments while maintaining healthy boundaries.",
    };
    return paths[number] ?? "Invalid number";
  }

  static String getRootCareerPath(int number) {
    final Map<int, String> careers = {
      1: "Best suited for leadership positions, entrepreneurship, or innovative fields. Excel in roles requiring initiative and independence. Consider careers in business leadership, invention, or creative direction.",
      2: "Naturally excel in collaborative environments and supportive roles. Great potential in diplomacy, counseling, or team coordination. Consider careers in mediation, teaching, or human resources.",
      3: "Thrive in creative and expressive fields. Excellence in communication and artistic endeavors. Consider careers in writing, performing arts, teaching, or public speaking.",
      4: "Excel in structured environments requiring organization and attention to detail. Strong in management and planning roles. Consider careers in finance, engineering, architecture, or project management.",
      5: "Best suited for dynamic, changing environments. Excel in sales, marketing, or travel-related fields. Consider careers in advertising, journalism, or entrepreneurial ventures.",
      6: "Natural ability in caring professions and artistic fields. Excel in roles involving counseling or creating beauty. Consider careers in healthcare, counseling, interior design, or the arts.",
      7: "Excel in research, analysis, and technical fields. Strong potential in spiritual or educational roles. Consider careers in research, technology, philosophy, or specialized consulting.",
      8: "Natural talent for business and executive roles. Excel in financial and material management. Consider careers in business leadership, finance, real estate, or law.",
      9: "Excel in humanitarian fields and broad-scope projects. Natural ability in healing and teaching. Consider careers in non-profit leadership, healthcare, counseling, or international relations.",
    };
    return careers[number] ?? "Invalid number";
  }

  static String getDestinyPurpose(int number) {
    final Map<int, String> purposes = {
      1: "Your destiny is to become a leader and pioneer in your chosen field. You're meant to develop unique ideas and inspire others to follow their own path. Your purpose involves initiating new projects and leading by example.",
      2: "Your destiny is to be a peacemaker and bridge-builder. You're meant to bring harmony to difficult situations and help others find common ground. Your purpose involves teaching cooperation and understanding.",
      3: "Your destiny is to uplift others through creative expression. You're meant to share your artistic gifts and communicate important messages. Your purpose involves spreading joy and inspiration.",
      4: "Your destiny is to build lasting structures and systems. You're meant to create stability and teach practical wisdom. Your purpose involves establishing reliable foundations for others.",
      5: "Your destiny is to be a catalyst for positive change. You're meant to help others embrace freedom and adventure constructively. Your purpose involves promoting growth through experience.",
      6: "Your destiny is to nurture and protect others. You're meant to create harmony in relationships and communities. Your purpose involves teaching responsibility and unconditional love.",
      7: "Your destiny is to seek and share wisdom. You're meant to uncover hidden truths and advance understanding. Your purpose involves bridging the spiritual and material worlds.",
      8: "Your destiny is to achieve material success and empower others. You're meant to master abundance and teach others to do the same. Your purpose involves demonstrating balanced power.",
      9: "Your destiny is to serve humanity on a broad scale. You're meant to work for the greater good of all. Your purpose involves teaching universal love and compassion.",
    };
    return purposes[number] ?? "Invalid number";
  }

  static String getDestinyGrowth(int number) {
    final Map<int, String> growth = {
      1: "Focus on developing confidence while remaining humble. Learn to balance independence with cooperation. Work on overcoming fear of failure and embracing your unique path.",
      2: "Develop emotional balance and diplomatic skills. Learn to trust your intuition while maintaining boundaries. Work on overcoming oversensitivity and fear of conflict.",
      3: "Channel your creativity constructively. Learn to follow through on projects and develop self-discipline. Work on overcoming self-doubt and scattered energy.",
      4: "Build flexibility into your structured approach. Learn to balance practicality with innovation. Work on overcoming rigidity and fear of change.",
      5: "Develop commitment while maintaining freedom. Learn to channel restless energy constructively. Work on overcoming impulsiveness and fear of limitation.",
      6: "Balance giving with receiving. Learn to set healthy boundaries in relationships. Work on overcoming perfectionism and excessive worry about others.",
      7: "Integrate spiritual wisdom with practical life. Learn to trust your inner guidance while staying grounded. Work on overcoming isolation and skepticism.",
      8: "Balance material success with spiritual values. Learn to use power wisely and ethically. Work on overcoming materialism and fear of lack.",
      9: "Develop detachment while maintaining compassion. Learn to complete cycles and let go gracefully. Work on overcoming martyrdom and scattered focus.",
    };
    return growth[number] ?? "Invalid number";
  }

  static String getDestinyPotential(int number) {
    final Map<int, String> potential = {
      1: "Potential to become an innovative leader who inspires others to find their unique path. Can pioneer new methods and approaches that benefit society. You have the capacity to start movements and initiatives that create lasting positive change. Your future holds opportunities for leadership roles where your originality and courage will shine.",
      2: "Potential to become a master mediator and relationship builder. Can create harmony in complex situations and bring opposing sides together. You have the capacity to heal relationships and foster cooperation on a large scale. Your future holds opportunities to build bridges between different groups and cultures.",
      3: "Potential to become a influential creative voice that inspires millions. Can produce artistic works that uplift and transform society. You have the capacity to communicate important messages through creative expression. Your future holds opportunities to reach wide audiences with your creative gifts.",
      4: "Potential to build organizations and systems that serve generations. Can create practical solutions to complex problems. You have the capacity to establish lasting foundations that others can build upon. Your future holds opportunities to create structures that provide stability and security for many.",
      5: "Potential to become a catalyst for positive transformation in society. Can help others embrace change and personal growth. You have the capacity to introduce progressive ideas that revolutionize existing systems. Your future holds opportunities to lead others through major life transitions.",
      6: "Potential to create nurturing environments that allow others to thrive. Can heal family and community dynamics on a large scale. You have the capacity to teach others about unconditional love and responsibility. Your future holds opportunities to establish harmonious communities and support systems.",
      7: "Potential to uncover and share profound wisdom that benefits humanity. Can bridge scientific and spiritual understanding. You have the capacity to solve complex problems through your analytical and intuitive abilities. Your future holds opportunities to make breakthrough discoveries.",
      8: "Potential to build enterprises that generate prosperity for many. Can master the material world while maintaining spiritual values. You have the capacity to demonstrate how to use power and wealth ethically. Your future holds opportunities for significant material and spiritual achievement.",
      9: "Potential to make a lasting humanitarian impact on a global scale. Can inspire universal brotherhood and compassionate action. You have the capacity to work for the betterment of all humanity. Your future holds opportunities to create positive change at the highest levels.",
    };
    return potential[number] ?? "Invalid number";
  }
}
