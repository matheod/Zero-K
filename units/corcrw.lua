unitDef = {
  unitname               = [[corcrw]],
  name                   = [[Krow]],
  description            = [[Flying Fortress]],
  acceleration           = 0.154,
  activateWhenBuilt      = true,
  airStrafe              = 0,
  amphibious             = true,
  bankscale              = [[0.5]],
  bmcode                 = [[1]],
  brakeRate              = 3.75,
  buildCostEnergy        = 5000,
  buildCostMetal         = 5000,
  builder                = false,
  buildPic               = [[CORCRW.png]],
  buildTime              = 5000,
  canAttack              = true,
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  collide                = false, -- radius is far too large
  collisionVolumeOffsets = [[0 0 -2]],
  collisionVolumeScales  = [[72 18 52]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],
  cruiseAlt              = 120,

  customParams           = {
    description_bp = [[Fortaleza voadora]],
    description_fr = [[Forteresse Volante]],
	description_de = [[Fliegendes Bollwerk]],
    helptext       = [[The Krow may be expensive and ponderous, but its incredible armor allows it do fly into all but the thickest anti-air defenses and cut down everything in sight with its three laser cannons. It can even shoot down enemy fighters.]],
    helptext_bp    = [[Aeronave flutuante armada com lasers para ataque terrestre. Muito cara e muito poderosa.]],
    helptext_fr    = [[La Forteresse Volante est l'ADAV le plus solide jamais construit, est ?quip?e de nombreuses tourelles laser, elle est capable de riposter dans toutes les directions et d'encaisser des d?g?ts importants. Id?al pour un appuyer un assaut lourd ou monopiler l'Anti-Air pendant une attaque a?rienne.]],
	helptext_de    = [[Der Krow scheint teuer und schwerf�llig, aber seine unglaubliche Panzerung erlaubt ihm auch durch die gr��e Flugabwehr zu kommen und alles abzuholzen, was in Sichtweite seiner drei Laserkanonen kommt. Er kann sogar feindliche J�ger vom Himmel holen.]],
  },

  defaultmissiontype     = [[VTOL_standby]],
  explodeAs              = [[BIG_UNIT]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  hoverAttack            = true,
  iconType               = [[supergunship]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[500]],
  mass                   = 886,
  maxDamage              = 17000,
  maxVelocity            = 3.4,
  minCloakDistance       = 75,
  modelCenterOffset      = [[0 -12 0]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName             = [[CORCRW]],
  scale                  = [[1]],
  seismicSignature       = 0,
  selfDestructAs         = [[BIG_UNIT]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 633,
  smoothAnim             = true,
  steeringmode           = [[1]],
  TEDClass               = [[VTOL]],
  turnRate               = 297,
  upright                = true,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[KROWLASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[KROWLASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[KROWLASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[PARTICLEBEAM]],
    },		
	
  },


  weaponDefs             = {

    KROWLASER  = {
      name                    = [[Laser]],
      areaOfEffect            = 8,
      avoidFeature            = false,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 20,
        subs    = 1,
      },

      duration                = 0.02,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 50,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      range                   = 400,
      reloadtime              = 0.2,
      rgbColor                = [[1 0 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/heavylaser_fire2]],
	  soundStartVolume		  = 0.7,
      soundTrigger            = true,
      targetMoveError         = 0.2,
      thickness               = 3.16,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2300,
    },


    FAKELASER  = {
      name                    = [[Laser]],
      areaOfEffect            = 8,
      avoidFeature            = false,
      collideFriendly         = false,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = -0.001,
        subs    = -0.001,
      },

      duration                = 0.02,
      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      range                   = 400,
      reloadtime              = 8,
      rgbColor                = [[0 0 0]],
      soundTrigger            = true,
      targetMoveError         = 0.2,
      thickness               = 0.001,
      tolerance               = 1000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2300,
    },

    PARTICLEBEAM = {
      name                    = [[Particle Beam]],
      areaOfEffect            = 8,
      beamTime                = 0.03,
	  beamttl				  = 6,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 20,
        subs    = 1,
      },

      explosionGenerator      = [[custom:flash1orange]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 3.5,
      minIntensity            = 1,
      range                   = 430,
      reloadtime              = 0.03,
      renderType              = 0,
      rgbColor                = [[1 0.3 0.1]],
      soundStart              = [[weapon/laser/laser_burn10]],
      soundTrigger            = true,
      sweepfire               = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 3,
      tolerance               = 18000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },		
	
  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Krow]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 17000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 2000,
      object           = [[wreck3x3a.s3o]],
      reclaimable      = true,
      reclaimTime      = 2000,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Krow]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 17000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 1000,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 1000,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ corcrw = unitDef })
