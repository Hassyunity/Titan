describe('Login', () => {
  beforeEach(() => {
    cy.visit('http://127.0.0.1:3001/')
  })

  it('displays two todo items by default', () => {
    cy.get('h2').should('have.text', 'Bienvenue dans Titan Project')
    cy.get('h1').should('contain', 'Login'); // Vérifie que le titre du formulaire est présent
    cy.get('form').should('exist'); // Vérifie que le formulaire existe
    cy.get('form').find('input[type="email"]').should('exist'); // Vérifie que le champ email existe
    cy.get('form').find('input[type="password"]').should('exist'); // Vérifie que le champ mot de passe existe
    cy.get('form').find('input[type="submit"]').should('exist'); 
  })

  it('can type in the email input', () => {
    const email = 'johndoe@titan.blue'
    const password = 'johndoe@titan.blue'
    cy.get('form').find('input[type="email"]').type(email)
    cy.get('form').find('input[type="email"]').should('have.value', email)
    cy.get('form').find('input[type="password"]').type(password)
    cy.get('form').find('input[type="password"]').should('have.value', password)
    
    cy.get('form').find('input[type="submit"]').click()

    cy.get('h1').should('have.text', 'Bienvenue sur votre tableau de bord')

    cy.get('.dashboard').should('contain.text', 'Dashboard').click();
    cy.get('.profil').should('contain.text', 'Profil').click();

    cy.get('.edit').should('contain.text', 'Modifier votre profil').click();
    cy.get('.Annuler').should('contain.text', 'Annuler').click();

    // cy.get('.logout').should('contain.text', 'Logout').click();
  })
})
