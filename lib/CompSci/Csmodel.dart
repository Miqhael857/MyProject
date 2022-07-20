import 'package:flutter/material.dart';

class CsModel {
  String title;
  String description;
  String imageUrl;

  CsModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<CsModel> csmodel = [
  CsModel(
    title: 'Networking',
    description:
        'A computer network is a set of computers sharing\n  resources located on or provided by network nodes.'
        'The computers use common communication'
        'protocols over digital interconnections to communicate with each other.'
        'These interconnections are made up of telecommunication network technologies,'
        'based on physically wired, optical, and wireless radio-frequency methods that'
        'may be arranged in a variety of network topologies.'
        'The nodes of a computer network can include personal computers, servers,'
        'networking hardware, or other specialised or general-purpose hosts.'
        'They are identified by network addresses, and may have hostnames. '
        'Hostnames serve as memorable labels for the nodes, rarely changed after'
        'initial assignment. Network addresses serve for locating and identifying'
        'the nodes by communication protocols such as the Internet Protocol.'
        'Computer networks may be classified by many criteria, including the '
        'transmission medium used to carry signals, bandwidth, communications'
        'protocols to organize network traffic, the network size, the topology,'
        'traffic control mechanism, and organizational intent.'
        'Computer networks support many applications and services, such as access '
        'to the World Wide Web, digital video, digital audio, shared use of '
        'application and storage servers, printers, and fax machines, and use'
        'of email and instant',
    imageUrl: 'assets/images/Networking.jpg',
  ),
  CsModel(
    title: 'Information Science',
    description: 'Information science (also known as information studies) is an'
        'academic field which is primarily concerned with analysis, collection,'
        'classification, manipulation, storage, retrieval, movement, dissemination,'
        'and protection of information.Practitioners within and outside the field'
        'study the application and the usage of knowledge in organizations in addition'
        'to the interaction between people, organizations, and any existing information'
        'systems with the aim of creating, replacing, improving, or understanding'
        'information systems. Historically, information science is associated with'
        'computer science, data science, psychology, technology, library science,'
        'healthcare, and intelligence agencies.However, information science'
        'also incorporates aspects of diverse fields such as archival science,'
        'cognitive science, commerce, law, linguistics, museology, management, '
        'mathematics, philosophy, public policy, and social sciences.'
        'Information science focuses on understanding problems from the perspective'
        'of the stakeholders involved and then applying information and other '
        'technologies as needed. In other words, it tackles systemic problems first'
        'rather than individual pieces of technology within that system.'
        'In this respect, one can see information science as a response to technological'
        'determinism, the belief that technology "develops by its own laws, '
        'that it realizes its own potential, limited only by the material'
        'resources available and the creativity of its developers. It must'
        'therefore be regarded as an autonomous system controlling and ultimately'
        'permeating all other subsystems of society."',
    imageUrl: 'assets/images/infosci.jpg',
  ),
  CsModel(
    title: 'Computer Programming',
    description:
        'Computer programming is the process of performing a particular'
        'computation (or more generally, accomplishing a specific computing result)'
        'usually by designing and building an executable computer program. Programming'
        'involves tasks such as analysis, generating algorithms, profiling algorithms'
        'accuracy and resource consumption, and the implementation of algorithms'
        '(usually in a chosen programming language, commonly referred to as coding).'
        'The source code of a program is written in one or more languages that are'
        'intelligible to programmers, rather than machine code, which is directly'
        'executed by the central processing unit. The purpose of programming is to'
        'find a sequence of instructions that will automate the performance of a task'
        '(which can be as complex as an operating system) on a computer, often for'
        'solving a given problem. Proficient programming thus usually requires'
        'expertise in several different subjects, including knowledge of the'
        'application domain, specialized algorithms, and formal logic.',
    imageUrl: 'assets/images/computerProgramming.jpg',
  ),
  CsModel(
    title: 'Artificial Intelligence',
    description: 'Artificial intelligence (AI) is intelligence demonstrated'
        'by machines, as opposed to the natural intelligence displayed by animals'
        'including humans. AI research has been defined as the field of study of'
        'intelligent agents, which refers to any system that perceives its'
        'environment and takes actions that maximize its chance of achieving'
        'its goals.The term "artificial intelligence" had previously been used'
        'to describe machines that mimic and display "human" cognitive skills'
        'that are associated with the human mind, such as "learning" and'
        '"problem-solving". This definition has since been rejected by major AI'
        'researchers who now describe AI in terms of rationality and acting'
        'rationally, which does not limit how intelligence can be articulated.'
        'AI applications include advanced web search engines (e.g., Google),'
        'recommendation systems (used by YouTube, Amazon and Netflix),'
        'understanding human speech (such as Siri and Alexa), self-driving cars'
        ' (e.g., Tesla), automated decision-making and competing at the highest'
        'level in strategic game systems (such as chess and Go). As machines become'
        'increasingly capable, tasks considered to require "intelligence" are often'
        'removed from the definition of AI, a phenomenon known as the AI effect.'
        'For instance, optical character recognition is frequently excluded from'
        'things considered to be AI,[4] having become a routine technology.',
    imageUrl: 'assets/images/Ai.jpg',
  ),
  CsModel(
    title: 'MultiMedia',
    description: 'Multimedia is a form of communication that combines different'
        'content forms such as text, audio, images, animations, or video into a'
        'single interactive presentation, in contrast to traditional mass media'
        'which features little to no interaction from users, such as printed'
        'material or audio recordings. Popular examples of multimedia include'
        'video podcasts, audio slideshows and animated videos.'
        'Multimedia can be recorded for playback on computers, laptops, smartphones,'
        'and other electronic devices, either on demand or in real time (streaming).'
        'In the early years of multimedia, the term "rich media" was synonymous with'
        'interactive multimedia. Over time, hypermedia extensions brought multimedia'
        'to the World Wide Web, Multimedia presentations may be viewed by person'
        'on stage, projected, transmitted, or played locally with a media player.'
        'A broadcast may be a live or recorded multimedia presentation. Broadcasts'
        'and recordings can be either analog or digital electronic media technology.'
        'Digital online multimedia may be downloaded or streamed. Streaming'
        'multimedia may be live or on-demand. Multimedia games and simulations'
        'may be used in a physical environment with special effects, with'
        'multiple users in an online network, or locally with an offline computer,'
        'game system, or simulator. The various formats of technological or digital'
        'multimedia may be intended to enhance the users experience,',
    imageUrl: 'assets/images/MultiMedia.jpg',
  ),
];
