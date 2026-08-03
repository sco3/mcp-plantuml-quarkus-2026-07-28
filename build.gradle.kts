plugins {
    java
    id("io.quarkus")
}

repositories {
    mavenCentral()
    mavenLocal()
}

val quarkusPlatformGroupId: String by project
val quarkusPlatformArtifactId: String by project
val quarkusPlatformVersion: String by project

dependencies {
    implementation(enforcedPlatform("${quarkusPlatformGroupId}:${quarkusPlatformArtifactId}:${quarkusPlatformVersion}"))
    implementation(enforcedPlatform("${quarkusPlatformGroupId}:quarkus-mcp-server-bom:${quarkusPlatformVersion}"))
    //implementation("io.quarkiverse.mcp:quarkus-mcp-server-http")
    implementation("io.quarkiverse.mcp:quarkus-mcp-server-http:2.0.0.Beta3")
    implementation("io.quarkus:quarkus-arc")
    implementation ("net.sourceforge.plantuml:plantuml-mit:1.2026.1")
    implementation ("io.quarkus:quarkus-awt:${quarkusPlatformVersion}")
    testImplementation("io.quarkus:quarkus-junit")
}

group = "sco3"
version = "1.0.0-SNAPSHOT"

java {
    sourceCompatibility = JavaVersion.VERSION_25
    targetCompatibility = JavaVersion.VERSION_25
}

tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"
    options.compilerArgs.add("-parameters")
}
