# groupe13-livrable1

Livrable 1 du projet CAR-HMS, groupe 13.

- [Rapport](docs/rapport-livrable1.md)
- `src/main/kotlin/domain` : sous-domaines et README.
- `src/main/kotlin/application/usecases` : interfaces des cas d'utilisation.
- `src/main/kotlin/application/dtos/queries` : DTO des commandes.
- `src/test/resources/contracts` : contrats Cucumber initiaux.

Les cas Se connecter, Se déconnecter et Générer un rapport sont décrits dans le rapport et exclus du code selon les consignes. Les interfaces et les contrats ne contiennent pas encore d'implémentation.

## Compilation

Utiliser un JDK 21. Dans IntelliJ, importer `build.gradle.kts` comme projet Gradle et choisir le JDK 21 pour Gradle.

Dans un terminal Windows avec `JAVA_HOME` configuré vers le JDK 21 :

```powershell
.\gradlew.bat build
```

Cette commande compile le code et crée le JAR. Les fonctionnalités Gherkin ne sont pas exécutées : leurs définitions d'étapes ne sont pas demandées pour ce livrable. IntelliJ peut donc signaler des étapes non définies. Il n'y a pas encore d'application à lancer.
