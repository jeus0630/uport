<svelte:head>
    <meta name="description" content="유포트는 기업의 핵심 자산인 데이터를 안전하고 효율적으로 관리하기 위한 스토리지 솔루션을 제공합니다. 풍부한 경험과 전문성을 바탕으로 고객 맞춤형 스토리지 구축, 운영, 유지보수 서비스를 제공하여 비즈니스 연속성을 보장합니다. 데이터의 저장부터 운영, 보호까지, 유포트가 신뢰할 수 있는 파트너가 되어드립니다." />
</svelte:head>

<script lang="ts">
    import { onMount } from 'svelte';

    // <!-- 3. 실행 스크립트 -->

    onMount(async () => {
        new daum.roughmap.Lander({
            "timestamp": "1753794344506",
            "key": "6gsy8ybn395"
        }).render();
    });

    // navbar
    import IntersectionObserver from "svelte-intersection-observer";
    import navbarLogo from "$lib/assets/images/uport_logo.png";

    // header
    import headerBgVideo from "$lib/assets/videos/header-bg.mp4";
    import scrollButitonIcon from "$lib/assets/images/scroll-btn-icon.png";

    // barea section
    import bareaItemIconStorage from "$lib/assets/images/barea/item-icon-storage.svg";
    import bareaItemIconStorageActive from "$lib/assets/images/barea/item-icon-storage-active.svg";
    import bareaItemIconCloud from "$lib/assets/images/barea/item-icon-cloud.svg";
    import bareaItemIconCloudActive from "$lib/assets/images/barea/item-icon-cloud-active.svg";
    import bareaItemIconAi from "$lib/assets/images/barea/item-icon-ai.svg";
    import bareaItemIconAiActive from "$lib/assets/images/barea/item-icon-ai-active.svg";
    import bareaItemIconSoftware from "$lib/assets/images/barea/item-icon-software.svg";
    import bareaItemIconSoftwareActive from "$lib/assets/images/barea/item-icon-software-active.svg";
    import bareaItemIconSecurity from "$lib/assets/images/barea/item-icon-security.svg";
    import bareaItemIconSecurityActive from "$lib/assets/images/barea/item-icon-security-active.svg";
    import bareaItemIconSi from "$lib/assets/images/barea/item-icon-si.svg";
    import bareaItemIconSiActive from "$lib/assets/images/barea/item-icon-si-active.svg";

    // clients section
    import clientLogo1 from "$lib/assets/images/clients/건국대학교병원logo.png";
    import clientLogo2 from "$lib/assets/images/clients/평화is.svg";
    import clientLogo3 from "$lib/assets/images/clients/서울성모병원logo.png";
    import clientLogo4 from "$lib/assets/images/clients/아이엔씨테크놀로지logo.jpg";
    import clientLogo5 from "$lib/assets/images/clients/국립종자원.png";
    import clientLogo6 from "$lib/assets/images/clients/농림축산검역본부.png";
    import clientLogo7 from "$lib/assets/images/clients/농림축산식품부.png";
    import clientLogo8 from "$lib/assets/images/clients/사학연금logo.jpg";
    import clientLogo9 from "$lib/assets/images/clients/HLsystem_logo.png";
    import clientLogo10 from "$lib/assets/images/clients/정원엔시스logo.png";
    import clientLogo11 from "$lib/assets/images/clients/네오시스logo.png";
    import clientLogo12 from "$lib/assets/images/clients/국립농산물품질관리원logo.png";
    import clientLogo13 from "$lib/assets/images/clients/시너지온logo.png";
    import clientLogo14 from "$lib/assets/images/clients/의정부성모병원logo.png";
    import clientLogo15 from "$lib/assets/images/clients/고려대학교의료원logo.jpg";
    

    // partners section
    import partnerLogo1 from "$lib/assets/images/partners/netapp_logo.svg";
    import partnerLogo2 from "$lib/assets/images/partners/에티버스이비티logo.png";
    import partnerLogo3 from "$lib/assets/images/partners/lenovo_logo.png";
    import partnerLogo4 from "$lib/assets/images/partners/Dell_EMC_logo.svg";
    import partnerLogo5 from "$lib/assets/images/partners/zungwon_logo.png";
    import partnerLogo6 from "$lib/assets/images/partners/softitech_logo.png";
    import partnerLogo7 from "$lib/assets/images/partners/epsilondelta_logo.svg";
    import partnerLogo8 from "$lib/assets/images/partners/HLsystem_logo.png";
    import partnerLogo9 from "$lib/assets/images/partners/synology.svg";
    import partnerLogo10 from "$lib/assets/images/partners/cisco_logo.svg";
    import partnerLogo11 from "$lib/assets/images/partners/brocade_logo.png";
    import partnerLogo12 from "$lib/assets/images/partners/juniper_logo.webp";
    import partnerLogo13 from "$lib/assets/images/partners/HPE_logo.svg";
    import partnerLogo14 from "$lib/assets/images/partners/HUAWEI_logo.svg";
    


    let scrollY = 0;
    let isCollapse = true;

    const MASTHEAD = -1;1
    const BAREA = 0;
    const CLIENTS = 1;
    const PARTNERS = 2;
    const LOCATION = 3;
    const CONTACT = 4;

    let masthead: HTMLElement;
    let intersectingMasthead: boolean;
    let elementList: HTMLElement[] = Array(5);
    let intersectingList: boolean[] = Array(5);

    let x_slide_container_width: number;
    let y_slide_container_height: number;

    const sectionInfos = [
        { id: "barea", href: "#barea", title: "사업영역" },
        { id: "clients", href: "#clients", title: "고객사" },
        { id: "partners", href: "#partners", title: "파트너십" },
        { id: "location", href: "#location", title: "Location" },
        { id: "contact", href: "#contact", title: "Contact" },
    ];

    let bareaInfos = [
        {
            id: "storage",
            name: "스토리지",
            isActive: false,
            src: bareaItemIconStorage,
            srcActive: bareaItemIconStorageActive,
            heading: `데이터의 가치를 높이는<br/><span class="point-word">스토리지 전문가</span>`,
            description: `유포트는 기업의 핵심 자산인 데이터를 안전하고 효율적으로 관리하기 위한 스토리지 솔루션을 제공합니다. 풍부한 경험과 전문성을 바탕으로 고객 맞춤형 <span class="point-word">스토리지 구축, 운영, 유지보수 서비스</span>를 제공하여 비즈니스 연속성을 보장합니다. <span class="point-word">데이터의 저장부터 운영, 보호까지</span>, 유포트가 신뢰할 수 있는 파트너가 되어드립니다.`,
        },
        {
            id: "cloud",
            name: "클라우드",
            isActive: false,
            src: bareaItemIconCloud,
            srcActive: bareaItemIconCloudActive,
            heading: `클라우드로 비즈니스의 <br/><span class="point-word">한계를 넘어서</span>십시오`,
            description: `유포트는 NetApp Cloud SaaS를 중심으로 <span class="point-word">AWS, Azure, Google Cloud, NCP 등</span> 다양한 클라우드 플랫폼에서의 맞춤형 클라우드 서비스를 제공합니다. NetApp의 선도적인 기술과 유포트의 전문성이 결합하여 <span class="point-word">멀티 클라우드 환경 구축, 데이터 관리 및 최적화</span>를 지원합니다.`,
        },
        {
            id: "ai",
            name: "AI/데이터",
            isActive: false,
            src: bareaItemIconAi,
            srcActive: bareaItemIconAiActive,
            heading: `AI와 데이터로 <span class="point-word">비즈니스<br/>혁신을</span> 함께하는 유포트`,
            description: `유포트는 인공지능 전문 기업 엡실론델타와의 파트너십을 통해 AI와 데이터 분야에서 최상의 솔루션을 제공합니다. <span class="point-word">AI 서비스 개발, 챗봇(생성형 AI) 개발, AI 플랫폼 구축, MLOps 구축/운영 등</span> 전방위적인 서비스를 통해 비즈니스의 새로운 가능성을 열어드립니다. 데이터 인사이트 도출부터 AI 기술 도입까지, 유포트가 엡실론델타와 함께 귀사의 비즈니스 혁신을 도와드리겠습니다.`,
        },
        {
            id: "software",
            name: "소프트웨어",
            isActive: false,
            src: bareaItemIconSoftware,
            srcActive: bareaItemIconSoftwareActive,
            heading: `맞춤형 소프트웨어로 <span class="point-word">비즈니스 <br/>가치를 높이는</span> 유포트`,
            description: `유포트는 <span class="point-word">웹, 모바일 앱, 플랫폼, SaaS 등</span> 다양한 분야에서 <span class="point-word">맞춤형 소프트웨어 개발</span> 서비스를 제공합니다. 고객의 비즈니스 요구 사항에 최적화된 솔루션을 제공하여 효율성과 생산성을 향상시킵니다. 혁신적인 기술과 풍부한 경험을 바탕으로 디지털 전환을 선도하는 유포트와 함께 비즈니스 경쟁력을 강화하세요.`,
        },
        {
            id: "security",
            name: "보안/관제",
            isActive: false,
            src: bareaItemIconSecurity,
            srcActive: bareaItemIconSecurityActive,
            heading: `<span class="point-word">비즈니스 안전</span>을 책임지는 <br/>유포트의 보안 관제`,
            description: `유포트는 <span class="point-word">보안 운영 센터, 클라우드 보안 관제, 네트워크 보안 장비, 보안 컨설팅 등</span> 전반적인 <span class="point-word">보안 관제 서비스</span>를 제공합니다. 최첨단 기술과 전문 인력을 통해 사이버 위협으로부터 비즈니스를 보호하고, 안전한 운영 환경을 구축합니다. 유포트와 함께 믿을 수 있는 보안 솔루션으로 비즈니스의 신뢰성을 높이세요.`,
        },
        {
            id: "si",
            name: "시스템통합",
            isActive: false,
            src: bareaItemIconSi,
            srcActive: bareaItemIconSiActive,
            heading: `시스템 통합으로 <br><span class="point-word">비즈니스 효율</span>을 극대화`,
            description: `유포트는 다양한 시스템과 기술을 하나로 연결하는 시스템 통합(SI) 분야에서 전문적인 솔루션을 제공합니다. <span class="point-word">시스템 통합 컨설팅, 시스템 설치 및 통합, 시스템 공급, 위탁 운영 관리, 기술 지원 등</span> 전반적인 서비스를 통해 비즈니스 프로세스를 최적화합니다. 복잡한 시스템 환경을 효율적으로 관리하고 생산성을 향상시키고자 한다면, 유포트와 함께하세요.`,
        },
    ];

    const clientLogoList = [
        clientLogo1,
        clientLogo2,
        clientLogo3,
        clientLogo4,
        clientLogo5,
        clientLogo6,
        clientLogo7,
        clientLogo8,
        clientLogo9,
        clientLogo10,
        clientLogo11,
        clientLogo12,
        clientLogo13,
        clientLogo14,
        clientLogo15
    ];

    const partnerLogoList = [
        { name: "NetApp", logo: partnerLogo1 },
        { name: "에티버스<br>이비티", logo: partnerLogo2 },
        { name: "레노버", logo: partnerLogo3 },
        { name: "DELL<br>EMC", logo: partnerLogo4 },
        { name: "정원엔시스", logo: partnerLogo5 },
        { name: "소프트아이텍", logo: partnerLogo6 },
        { name: "엡실론델타", logo: partnerLogo7 },
        { name: "에이치엘<br>시스템", logo: partnerLogo8 },
        { name: "시놀로지", logo: partnerLogo9 },
        { name: "시스코", logo: partnerLogo10 },
        { name: "브로케이드", logo: partnerLogo11 },
        { name: "주니퍼", logo: partnerLogo12 },
        { name: "HPE", logo: partnerLogo13 },
        { name: "HUAWEI", logo: partnerLogo14 },
    ];

    const contactInquiryOptions = [
        { id: "contactInquiryStorage", name: "스토리지" },
        { id: "contactInquiryCloud", name: "클라우드" },
        { id: "contactInquiryAi", name: "AI / Data" },
        { id: "contactInquirySoftware", name: "소프트웨어 개발" },
        { id: "contactInquirySecurity", name: "보안/관제" },
        { id: "contactInquirySi", name: "시스템통합" },
        { id: "contactInquiryMaintenance", name: "유지보수" },
        { id: "contactInquiryConsulting", name: "컨설팅" },
    ];

    let contactInquiryType = contactInquiryOptions[0];
    let contactEmail = "";
    let contactSubject = "";
    let contactMessage = "";

    $: collapseClass = isCollapse ? "collapse" : "visible show";

    function deativateAllBareas() {
        bareaInfos.forEach((bareaInfo) => {
            bareaInfo.isActive = false;
        });

        bareaInfos = [...bareaInfos];
    }

    function activateBarea(index: number) {
        deativateAllBareas();
        bareaInfos[index].isActive = true;
        bareaInfos = [...bareaInfos];
    }

    function isAllBareasDeactivated() {
        return bareaInfos.every((bareaInfo) => !bareaInfo.isActive);
    }

    function scrollIntoView({ target }: { target: any }) {
        const el = document.querySelector(target.getAttribute("href"));
        if (!el) return;
        el.scrollIntoView({
            behavior: "smooth",
        });
    }

    function scrollDown() {
        const el = document.querySelector("#barea");
        if (!el) return;
        el.scrollIntoView({
            behavior: "smooth",
        });
    }

    function handleSubmit() {
        // alert
        alert(
            '아직 메일을 보낼 수 없습니다. 전화를 통해 직접 연락해주시기 바랍니다.'
        );
    }

    let scrollAmount = 0;
    let clientList: HTMLDivElement;

    let partnerList: HTMLDivElement;
</script>

<svelte:window bind:scrollY />

<main>
    <nav
        id="mainNav"
        class="navbar navbar-dark lg:navbar-expand-lg fixed-top {scrollY > 0
            ? 'navbar-shrink'
            : ''}"
    >
        <div class="container">
            <a class="navbar-brand" href="/">
                <img src={navbarLogo} alt="..." />
            </a>
            <button
                class="inline-block navbar-toggler"
                type="button"
                data-tw-toggle="collapse"
                data-tw-target="#navbarResponsive"
                aria-controls="navbarResponsive"
                aria-expanded="false"
                aria-label="Toggle navigation"
                on:click={() => {
                    isCollapse = !isCollapse;
                }}
            >
                <svg
                    class="svg-inline--fa fa-bars ml-1"
                    aria-hidden="true"
                    focusable="false"
                    data-prefix="fas"
                    data-icon="bars"
                    role="img"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 448 512"
                    data-fa-i2svg=""
                    ><path
                        fill="currentColor"
                        d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"
                    ></path></svg
                ><!-- <i class="fas fa-bars ms-1"></i> Font Awesome fontawesome.com -->
            </button>
            <div
                class="navbar-collapse lg:visible {collapseClass}"
                id="navbarResponsive"
            >
                <ul class="navbar-nav uppercase ms-auto py-4 lg:py-0">
                    {#each sectionInfos as section, index}
                        <li class="nav-item">
                            <a
                                class="nav-link"
                                href={section.href}
                                class:active={intersectingList[index]}
                                on:click|preventDefault={scrollIntoView}
                            >
                                {section.title}
                            </a>
                        </li>
                    {/each}
                </ul>
            </div>
        </div>
    </nav>
    <!-- Services-->
    <IntersectionObserver
        element={masthead}
        bind:intersecting={intersectingMasthead}
    >
        <header class="masthead">
            <div class="video-container">
                <video autoplay loop muted playsinline>
                    <source src={headerBgVideo} type="video/mp4" />
                </video>
            </div>
            <div class="container">
                <h1 class="masthead-heading uppercase text-transparent flex justify-center h-28">
                    <span class="sr-only">Uport</span>
                    <img src={navbarLogo} alt="..." class="h-full w-auto"/>
                </h1>
                <h2 class="masthead-subheading">
                    Support for you & your comfort
                </h2>
                <div class="masthead-copy">
                    <div class="main-copy">
                        급변하는 현재의 IT환경에서는 다양한 분야의 전문성을 가진
                        파트너가 필요합니다
                    </div>
                    <div class="sub-copy">
                        유포트는 다양한 IT비즈니스 경험을 기반으로 각
                        사업분야에서 새로운 비전과 고객 중심의 가치를
                        창출하고있습니다.
                    </div>
                </div>
            </div>
            <a
                class="down-scroll-container"
                href="#barea"
                on:click|preventDefault={scrollDown}
            >
                <div class="down-scroll">
                    <button class="down-scroll-btn">
                        <img src={scrollButitonIcon} alt="down arrow" />
                    </button>
                </div>
            </a>
        </header>
    </IntersectionObserver>
    <!-- Business Area -->
    <IntersectionObserver
        element={elementList[BAREA]}
        bind:intersecting={intersectingList[BAREA]}
    >
        <section
            class="page-section"
            id="barea"
            bind:this={elementList[BAREA]}
        >
            <div class="background-image-container"></div>
            <div class="container">
                <div class="content-container text-center mb-16 w-full px-4">
                    <h2 class="section-heading mb-8">
                        단계별 비즈니스 성장을 함께하는<br class="md:hidden" /> <span class="point-word">기술 파트너</span>
                    </h2>
                    <p class="section-description max-w-3xl mx-auto">
                        유포트는 스토리지와 데이터 비즈니스를 중심으로 
                        <span class="font-bold text-[#111827]">클라우드, AI, 소프트웨어 개발, 보안 관제, 시스템 통합까지 
                        아우르는 풀스택 기술 지원 </span>을 제공합니다.<br class="hidden md:block my-2"/> 각 영역의 전문가들은 귀사의 비즈니스 성장을 가속화하고, 
                        경쟁력을 강화하는 데에 아낌없는 지원을 해드리기 위해 존재합니다.<br class="hidden md:block my-2"/>
        
                         유포트의 통합된 기술 지원으로 비즈니스의 새로운 가능성을 발견하세요.
                    </p>
                </div>
                <div class="barea-grid-container">
                    {#each bareaInfos as barea}
                        <div class="barea-card">
                            <div class="icon-wrapper mb-6">
                                <img 
                                    src={barea.src} 
                                    alt={barea.name} 
                                    class="w-16 h-16 object-contain"
                                />
                            </div>
                            <h3 class="card-title">
                                {barea.name}
                            </h3>
                            <p class="card-desc">
                                {@html barea.description}
                            </p>
                        </div>
                    {/each}
                </div>
            </div>
        </section>
    </IntersectionObserver>
    <section class="clients-and-partners">
        <div class="background-image-container" />
        <IntersectionObserver
            element={elementList[CLIENTS]}
            bind:intersecting={intersectingList[CLIENTS]}
        >
            <section
                class="page-section"
                id="clients"
                bind:this={elementList[CLIENTS]}
            >
                <div class="container">
                    <div class="content-container">
                        <h2 class="section-heading">
                            <span class="point-word">유포트</span>와 비즈니스를
                            함께해온 고객사
                        </h2>
                        <div class="dual-x-slide-container">
                            <div class="x-slide-container">
                                <div
                                    bind:this={clientList}
                                    class="slide x-slide slide-left"
                                >
                                    <!-- 고객사 리스트 -->
                                    <!-- 무한 로테이션을 위해 리스트 요소 두번 반복-->
                                    {#each clientLogoList as clientLogo}
                                        <div
                                            class="client-logo-container slide-item"
                                        >
                                            <img
                                                src={clientLogo}
                                                alt="Client 1"
                                                class="client-logo"
                                            />
                                        </div>
                                    {/each}
                                    {#each clientLogoList as clientLogo}
                                        <div
                                            class="client-logo-container slide-item"
                                        >
                                            <img
                                                src={clientLogo}
                                                alt="Client"
                                                class="client-logo"
                                            />
                                        </div>
                                    {/each}
                                </div>
                            </div>
                            <div
                                class="x-slide-container"
                                bind:clientWidth={x_slide_container_width}
                                style="--x-slide-container-width: {x_slide_container_width}px"
                            >
                                <div
                                    bind:this={clientList}
                                    class="slide x-slide slide-right"
                                >
                                    <!-- 고객사 리스트 -->
                                    <!-- 무한 로테이션을 위해 리스트 요소 두번 반복-->
                                    <!-- reverse logo10, logo9, ... , logo2, logo1-->
                                    {#each clientLogoList.slice() as clientLogo}
                                        <div
                                            class="client-logo-container slide-item"
                                        >
                                            <img
                                                src={clientLogo}
                                                alt="Client"
                                                class="client-logo"
                                            />
                                        </div>
                                    {/each}
                                    {#each clientLogoList.slice() as clientLogo}
                                        <div
                                            class="client-logo-container slide-item"
                                        >
                                            <img
                                                src={clientLogo}
                                                alt="Client"
                                                class="client-logo"
                                            />
                                        </div>
                                    {/each}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </IntersectionObserver>
        <section id="cpdivider" class="page-section">
            <div class="container">
                <hr class="divider" />
            </div>
        </section>
        <IntersectionObserver
            element={elementList[PARTNERS]}
            bind:intersecting={intersectingList[PARTNERS]}
        >
            <section
                class="page-section"
                id="partners"
                bind:this={elementList[PARTNERS]}
            >
                <div class="container">
                    <div class="content-container">
                        <h2 class="section-heading">
                            <span class="point-word">유포트</span>와 함께<br />
                            시너지를 내는 파트너사
                        </h2>
                        <p class="section-description">
                            유포트는 각 사업영역에서 기술 전문성이 있는 많은<br
                            />
                            파트너들과 함께 귀사의 비즈니스 성공을 위해 함께합니다.<br
                            />
                            파트너와의 협력으로 시너지를 내며 상호 발전과 성장을
                            함께합니다<br />
                        </p>
                    </div>
                    <div class="dual-y-slide-container">
                        <div class="y-slide-container">
                            <div
                                bind:this={clientList}
                                class="slide y-slide slide-up"
                            >
                                {#each partnerLogoList as partnerLogo}
                                    <div
                                        class="partner-item-container slide-item"
                                    >
                                        <img
                                            src={partnerLogo.logo}
                                            alt="Partner"
                                            class="partner-logo"
                                        />
                                        <h6 class="partner-name">
                                            {@html partnerLogo.name}
                                        </h6>
                                    </div>
                                {/each}
                                {#each partnerLogoList as partnerLogo}
                                    <div
                                        class="partner-item-container slide-item"
                                    >
                                        <img
                                            src={partnerLogo.logo}
                                            alt="Partner"
                                            class="partner-logo"
                                        />
                                        <h6 class="partner-name">
                                            {@html partnerLogo.name}
                                        </h6>
                                    </div>
                                {/each}
                            </div>
                        </div>
                        <div
                            class="y-slide-container down-slide-container"
                            bind:clientHeight={y_slide_container_height}
                            style="--y-slide-container-height: {y_slide_container_height}px"
                        >
                            <div
                                bind:this={clientList}
                                class="slide y-slide slide-down"
                            >
                                {#each partnerLogoList as partnerLogo}
                                    <div
                                        class="partner-item-container slide-item"
                                    >
                                        <img
                                            src={partnerLogo.logo}
                                            alt="Partner"
                                            class="partner-logo"
                                        />
                                        <h6 class="partner-name">
                                            {@html partnerLogo.name}
                                        </h6>
                                    </div>
                                {/each}
                                {#each partnerLogoList as partnerLogo}
                                    <div
                                        class="partner-item-container slide-item"
                                    >
                                        <img
                                            src={partnerLogo.logo}
                                            alt="Partner"
                                            class="partner-logo"
                                        />
                                        <h6 class="partner-name">
                                            {@html partnerLogo.name}
                                        </h6>
                                    </div>
                                {/each}
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </IntersectionObserver>
    </section>
    <!-- Location-->
    <IntersectionObserver
        element={elementList[LOCATION]}
        bind:intersecting={intersectingList[LOCATION]}
    >
        <section
            class="page-section"
            id="location"
            bind:this={elementList[LOCATION]}
        >
            <!-- map kakao-->
            <div class="container">
                <h2 class="section-heading">Location</h2>
                <p class="section-description">
                    유포트로 오시는 길을 안내해드립니다.
                </p>
                <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                <div 
                    id="daumRoughmapContainer1753794344506" 
                    class="root_daum_roughmap root_daum_roughmap_landing"
                    style="width:100%">
                </div>
                
            </div>
        </section>
    </IntersectionObserver>
    <!-- Contact-->
    <IntersectionObserver
        element={elementList[CONTACT]}
        bind:intersecting={intersectingList[CONTACT]}
    >
        <section
            class="page-section"
            id="contact"
            bind:this={elementList[CONTACT]}
        >
            <div class="container">
                <h2 class="section-heading">Contact</h2>
                <p class="section-description">
                    유포트의 기술지원이 필요하시다면 문의 메일을 주세요
                </p>
                <div class="form-container">
                    <form on:submit|preventDefault={handleSubmit}>
                        <div class="form-group-container">
                            <div class="inquirytype-email-form-container">
                                <div class="form-group inquirytype-form-group">
                                    <label
                                        for="inquiryType"
                                        class="form-label select-label"
                                        >문의유형</label
                                    >
                                    <select
                                        id="inquiryType"
                                        bind:value={contactInquiryType}
                                        class="form-select"
                                    >
                                        {#each contactInquiryOptions as inquiryOption}
                                            <option value={inquiryOption}
                                                >{inquiryOption.name}</option
                                            >
                                        {/each}
                                    </select>
                                </div>

                                <div class="form-group email-form-group">
                                    <label
                                        for="email"
                                        class="form-label input-label"
                                        >이메일</label
                                    >
                                    <input
                                        type="email"
                                        id="email"
                                        bind:value={contactEmail}
                                        placeholder="회신을 받을 이메일을 작성해주세요"
                                        class="form-input"
                                        required
                                    />
                                </div>
                            </div>
                            <div class="form-group">
                                <label
                                    for="subject"
                                    class="form-label input-label">제목</label
                                >
                                <input
                                    type="text"
                                    id="subject"
                                    bind:value={contactSubject}
                                    placeholder="문의 제목을 작성해주세요"
                                    class="form-input"
                                    required
                                />
                            </div>

                            <div class="form-group">
                                <label
                                    for="message"
                                    class="form-label textarea-label"
                                    >문의내용</label
                                >
                                <textarea
                                    id="message"
                                    bind:value={contactMessage}
                                    placeholder="문의 내용을 최대한 자세히 적어주세요."
                                    class="form-textarea mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                                    required
                                ></textarea>
                            </div>
                        </div>
                        <div class="submit-btn-container">
                            <button type="submit" class="submit-btn">
                                전송하기
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </IntersectionObserver>
    <footer class="footer py-6">
        <div class="container">
            <div class="row items-center">
                <div class="col-lg-4 lg:text-left">
                    <a href="/" class="footer-logo">
                        <img src={navbarLogo} alt="footer logo" />
                    </a>
                </div>
                <div class="col-lg-4 lg:text-left">
                    대표이사 : 곽영근 | 사업자등록번호 : 303-86-02255 |
                    (우)04799 서울특별시 성동구 아차산로 17길 48 성수 SK V1 Center 1동 504호 | 전화번호 : 02-432-0203 | fax : 02-432-0204
                </div>
                <div class="col-lg-4 my-4 lg:my-0">
                    <a
                        class="btn btn-dark btn-social mx-2"
                        href="#!"
                        aria-label="Twitter"
                        ><svg
                            class="svg-inline--fa fa-twitter"
                            aria-hidden="true"
                            focusable="false"
                            data-prefix="fab"
                            data-icon="twitter"
                            role="img"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 512 512"
                            data-fa-i2svg=""
                            ><path
                                fill="currentColor"
                                d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"
                            ></path></svg
                        ><!-- <i class="fab fa-twitter"></i> Font Awesome fontawesome.com --></a
                    >
                    <a
                        class="btn btn-dark btn-social mx-2"
                        href="#!"
                        aria-label="Facebook"
                        ><svg
                            class="svg-inline--fa fa-facebook-f"
                            aria-hidden="true"
                            focusable="false"
                            data-prefix="fab"
                            data-icon="facebook-f"
                            role="img"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 320 512"
                            data-fa-i2svg=""
                            ><path
                                fill="currentColor"
                                d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"
                            ></path></svg
                        ><!-- <i class="fab fa-facebook-f"></i> Font Awesome fontawesome.com --></a
                    >
                    <a
                        class="btn btn-dark btn-social mx-2"
                        href="#!"
                        aria-label="LinkedIn"
                        ><svg
                            class="svg-inline--fa fa-linkedin-in"
                            aria-hidden="true"
                            focusable="false"
                            data-prefix="fab"
                            data-icon="linkedin-in"
                            role="img"
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 448 512"
                            data-fa-i2svg=""
                            ><path
                                fill="currentColor"
                                d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"
                            ></path></svg
                        ><!-- <i class="fab fa-linkedin-in"></i> Font Awesome fontawesome.com --></a
                    >
                </div>
                <div class="col-lg-4 lg:text-right">
                    <a class=" text-decoration-none mr-4" href="#!"
                        >Privacy Policy</a
                    >
                    <a class="text-decoration-none" href="#!">Terms of Use</a>
                </div>
            </div>
        </div>
    </footer>
</main>

<style>
    @keyframes slideleft {
        0% {
            transform: translateX(0%);
        }
        100% {
            transform: translateX(-50%);
        }
    }

    @keyframes slideright {
        0% {
            transform: translateX(calc(-100% + var(--x-slide-container-width)));
        }
        100% {
            transform: translateX(calc(-50% + var(--x-slide-container-width)));
        }
    }

    @keyframes slideup {
        0% {
            transform: translateY(0%);
        }
        100% {
            transform: translateY(-50%);
        }
    }

    @keyframes slidedown {
        0% {
            transform: translateY(
                calc(-100% + var(--y-slide-container-height))
            );
        }
        100% {
            transform: translateY(calc(-50% + var(--y-slide-container-height)));
        }
    }

    #barea .background-image-container {
        background-image: url("$lib/assets/images/background/barea-background.jpeg");
    }

    .clients-and-partners .background-image-container {
        background-image: url("$lib/assets/images/background/clients-and-partners-background.jpeg");
    }

    .slide-left {
        animation-name: slideleft;
    }

    .slide-right {
        animation-name: slideright;
    }

    .slide-up {
        animation-name: slideup;
    }

    .slide-down {
        animation-name: slidedown;
    }
</style>
