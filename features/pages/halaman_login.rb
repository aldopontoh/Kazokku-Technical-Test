class LoginPage < SitePrism::Page

    element :logo, '#page-content-inner > section > div > div.registration__content > a > img'
    element :headline, '#page-content-inner > section > div > div.registration__content > h1'
    element :textDevCommunity, '#page-content-inner > section > div > div.registration__content > p'

    element :logoApple, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(1) > button > svg > path'
    element :logoFacebook, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(2) > button > svg > path:nth-child(2)'
    element :logoForem, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(3) > button > svg > rect'
    element :logoGithub, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(4) > button > svg'
    element :logoGoogle, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(5) > button > svg'
    element :logoTwitter, '#surface1 > path:nth-child(2)'
    
    element :textConinuewithApple, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(1) > button > span'
    element :textConinuewithFacebook, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(2) > button > span'
    element :textConinuewithForem, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(3) > button > span'
    element :textConinuewithGithub, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(4) > button'
    element :textConinuewithGoogle, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(5) > button > span'
    element :textConinuewithTwitter, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(6) > button > span'

    element :btnConinuewithApple, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(1) > button'
    element :btnConinuewithFacebook, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(2) > button'
    element :btnConinuewithForem, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(3) > button'
    element :btnConinuewithGithub, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(4) > button'
    element :btnConinuewithGoogle, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(5) > button'
    element :btnConinuewithTwitter, '#page-content-inner > section > div > div.registration__actions > div.registration__actions-providers > form:nth-child(6) > button'

    element :textOr, '#sign-in-password-form > div.registration__hr-container > div'
    element :textEmail, '#new_user > div:nth-child(3) > label'
    element :textPassword, '#new_user > div:nth-child(4) > label'
    element :textFieldEmail, '#user_email'
    element :textFieldPassword, '#user_password'

    element :checkbox, '#user_remember_me'
    element :textRememberMe, '#new_user > div.crayons-field.flex.flex-row.items-center.justify-between.mb-3 > div > label'
    element :linkForgotPassword, '#new_user > div.crayons-field.flex.flex-row.items-center.justify-between.mb-3 > a'
    element :btnLogin, '#new_user > div.actions.pt-3 > input'
    element :textBySigningIn, '#sign-in-password-form > div.mt-6.align-center.fs-s.fw-normal.fs-italic.px-0.s\:px-9.color-secondary'
    element :linkPrivacyPolicy, '#sign-in-password-form > div.mt-6.align-center.fs-s.fw-normal.fs-italic.px-0.s\:px-9.color-secondary > a:nth-child(1)'
    element :linkTermsOfUse, '#sign-in-password-form > div.mt-6.align-center.fs-s.fw-normal.fs-italic.px-0.s\:px-9.color-secondary > a:nth-child(1)'
    element :linkCodeOfConduct, '#sign-in-password-form > div.mt-6.align-center.fs-s.fw-normal.fs-italic.px-0.s\:px-9.color-secondary > a:nth-child(3)'
    
    
    element :textNewtodevCommunity, '#sign-in-password-form > div.crayons-subtitle-3.color-grey-700.fw-normal.align-center.pb-6'
    element :linkCreateAccount, '#sign-in-password-form > div.crayons-subtitle-3.color-grey-700.fw-normal.align-center.pb-6 > a'
    
    element :errorMessageLogin, '#page-content-inner > div.crayons-notice--danger.registration__error-notice > strong'

end