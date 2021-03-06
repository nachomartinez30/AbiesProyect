SELECT
densidadAparente.UPMID,
densidadAparente.SitioID,
densidadAparente.DensidadAparenteID,
-- _____________________________________________________________________________________________________________________________________________________________________________________________
sitio.Sitio,
upmMala.Estado,
upmMala.Municipio,
-- _____________________________________________________________________________________________________________________________________________________________________________________________
densidadAparente.ProfundidadReal,
densidadAparente.DiametroCilindro,
densidadAparente.VolumenMaterial,
densidadAparente.PesoTotalSuelo,
densidadAparente.PesoTotalMuestra,
densidadAparente.Observaciones

FROM
SUELO_DensidadAparente densidadAparente

JOIN SITIOS_Sitio sitio ON sitio.SitioID=densidadAparente.SitioID
JOIN UPM_MallaPuntos upmMala ON upmMala.UPMID=densidadAparente.UPMID

GROUP BY
densidadAparente.UPMID,
densidadAparente.SitioID,
densidadAparente.DensidadAparenteID
ORDER BY
densidadAparente.UPMID